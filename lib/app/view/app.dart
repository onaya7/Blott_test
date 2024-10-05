import 'package:blott/config/navigators/routes_generator.dart';
import 'package:blott/config/navigators/routes_manager.dart';
import 'package:blott/config/theme/theme.dart';
import 'package:blott/core/constants/keys.dart';
import 'package:blott/core/injections/injection.dart';
import 'package:blott/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:blott/features/home/presentation/bloc/home_bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => sl<AuthBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => sl<HomeBloc>(),
        ),
      ],
      child: ToastificationWrapper(
        child: MaterialApp(
          title: 'Traffik',
          debugShowCheckedModeBanner: false,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          navigatorKey: Keys.navigatorKey,
          onGenerateRoute: RoutesGenerator.onGenerateRoute,
          initialRoute: RoutesManager.splashRoute,
        ),
      ),
    );
  }
}
