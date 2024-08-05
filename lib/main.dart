import 'package:bloc/bloc.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:reciply/core/utils/app_routers.dart';
import 'package:reciply/core/utils/service_locator.dart';
import 'package:reciply/core/utils/simple_bloc_observer.dart';

void main() {
  setup(); // for dependency injection
  Bloc.observer = SimpleBlocObserver();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (BuildContext context) => const ReciplyApp(),
    ),
  );
}

class ReciplyApp extends StatelessWidget {
  const ReciplyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouters.route,
    );
  }
}
