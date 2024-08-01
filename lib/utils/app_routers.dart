import 'package:go_router/go_router.dart';
import 'package:reciply/features/splash/presentation/views/splash_view.dart';

class AppRouters {
  static final route = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
  ]);
}
