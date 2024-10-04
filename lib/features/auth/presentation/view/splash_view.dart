import 'package:blott/config/navigators/routes_manager.dart';
import 'package:blott/core/components/custom_scaffold.dart';
import 'package:blott/core/constants/app_color.dart';
import 'package:blott/core/constants/app_size.dart';
import 'package:blott/core/helpers/ui_helpers.dart';
import 'package:blott/core/injections/injection.dart';
import 'package:blott/core/local_data/local_data_storage.dart';
import 'package:blott/core/local_data/model/devicedetails_model.dart';
import 'package:blott/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutternativedata/entities/fn_device_info.dart';
import 'package:flutternativedata/entities/fn_memory_info.dart';
import 'package:flutternativedata/entities/fn_package_info.dart';
import 'package:flutternativedata/flutternativedata.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  FNDeviceInfo? fnDeviceInfo;
  FNMemoryInfo? fnMemoryInfo;
  FNPackageInfo? fnPackageInfo;
  LocalDataStorage localDataStorage = sl<LocalDataStorage>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 4), () async {
      await _initPackageInfo();
    });
  }

  Future<void> _initPackageInfo() async {
    fnDeviceInfo = await sl<Flutternativedata>().getDeviceInfo();
    fnMemoryInfo = await sl<Flutternativedata>().getMemoryInfo();
    fnPackageInfo = await sl<Flutternativedata>().getPackageInfo();
    // final deviceToken = await sl<FirebaseMessagingService>().getToken();
    final details = DeviceDetailsModel(
      osVersion: fnDeviceInfo!.systemVersion,
      deviceName: fnDeviceInfo!.deviceName,
      deviceType: fnDeviceInfo!.deviceModel,
      versionCode: fnPackageInfo!.versionCode,
      // notificationToken: deviceToken,
      phoneId: fnDeviceInfo!.deviceID,
      buildNumber: fnPackageInfo!.versionName,
    );
    await localDataStorage.setDeviceDetails(value: details);
    setState(() {});
    UiHelpers.navigateToPageAndRemoveUntil(RoutesManager.onboardingRoute);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        color: AppColor.black,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                width: AppSizes.screenWidth(context),
                color: AppColor.black,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Assets.images.appIcon
                        .image(
                          width: 300,
                          height: 300,
                        )
                        .animate()
                        .scale(
                          delay: 100.ms,
                          duration: 500.ms,
                        )
                        .then(
                          delay: 500.ms,
                        ),
                  ],
                ),
              ),
            ),
            // if (fnDeviceInfo == null ||
            //     fnPackageInfo == null ||
            //     fnMemoryInfo == null)
            //   const SizedBox(
            //     height: 20,
            //     width: 20,
            //     child: CircularProgressIndicator.adaptive(
            //       valueColor: AlwaysStoppedAnimation<Color>(
            //         AppColor.white,
            //       ),
            //       strokeWidth: 2.5,
            //     ),
            //   )
            // else
            //   Text(
            //     'v ${fnPackageInfo!.versionName}+${fnPackageInfo!.versionCode}',
            //     style: const TextStyle(
            //       color: AppColor.white,
            //       fontSize: 16,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
