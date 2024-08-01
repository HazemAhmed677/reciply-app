import 'package:flutter/material.dart';
import 'package:reciply/utils/app_routers.dart';

void main() {
  runApp(
    const ReciplyApp(),
  );
}

class ReciplyApp extends StatelessWidget {
  const ReciplyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouters.route,
    );
  }
}
