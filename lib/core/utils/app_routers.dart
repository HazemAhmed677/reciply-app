import 'package:go_router/go_router.dart';
import 'package:reciply/core/helpers/custom_view_animation.dart';
import 'package:reciply/features/splash/presentation/views/splash_view.dart';

class AppRouters {
  static final route = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => CustomViewAnimation(
          child: const SplashView(),
          key: state.pageKey,
          duration: 0,
        ),
      ),
    ],
  );
}
