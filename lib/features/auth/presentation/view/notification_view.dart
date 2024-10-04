import 'package:blott/config/navigators/routes_manager.dart';
import 'package:blott/core/components/custom_appbar.dart';
import 'package:blott/core/components/custom_button.dart';
import 'package:blott/core/components/custom_scaffold.dart';
import 'package:blott/core/constants/app_color.dart';
import 'package:blott/core/helpers/ui_helpers.dart';
import 'package:blott/core/injections/injection.dart';
import 'package:blott/core/services/localnotification_service.dart';
import 'package:blott/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  void initState() {
    super.initState();
    _initializeNotifications();
  }

  Future<void> _initializeNotifications() async {
    await sl<LocalNotificationServices>().init();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: CustomAppBar(
        leading: IconButton(
          onPressed: () => UiHelpers.popPage(),
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.icons.notificationIcon.svg(),
                const Gap(25),
                Text(
                  'Get the most out of Blott ✅',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Gap(10),
                Text(
                  textAlign: TextAlign.center,
                  'Allow notifications to stay in the loop with your payments, requests and groups.',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: CustomButton(
                text: 'Continue',
                textColor: AppColor.white,
                backgroundColor: AppColor.primary,
                onPressed: () =>
                    UiHelpers.navigateToPage(RoutesManager.dashboardRoute)),
          ),
        ],
      ),
    );
  }
}
