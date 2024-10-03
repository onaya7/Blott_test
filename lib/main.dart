import 'package:blott/app/app.dart';
import 'package:blott/bootstrap.dart';
import 'package:blott/core/constants/env.dart';
import 'package:blott/core/injections/injection.dart';
import 'package:blott/core/local_data/model/devicedetails_model.dart';
import 'package:blott/gen/assets.gen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await dotenv.load(
    fileName: Assets.aEnv,
  );
  await Hive.initFlutter();
  Hive.registerAdapter(DeviceDetailsModelAdapter());
  await Hive.openBox(Env.blottDb);
  configureDependencies();
  await bootstrap(
    () => DevicePreview(
      builder: (context) {
        return const App();
      },
    ),
  );
}
