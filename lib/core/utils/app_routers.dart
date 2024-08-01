import 'package:go_router/go_router.dart';
import 'package:reciply/core/helpers/custom_view_animation.dart';
import 'package:reciply/features/home/data/presentation/views/home_view.dart';
import 'package:reciply/features/splash/presentation/views/splash_view.dart';

class AppRouters {
  static const String splashID = '/';
  static const String homeID = '/home';
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: splashID,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeID,
        pageBuilder: (context, state) => CustomViewAnimation(
          child: const HomeView(),
          key: state.pageKey,
          duration: 0,
        ),
      ),
    ],
  );
}
