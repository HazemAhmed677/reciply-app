import 'package:go_router/go_router.dart';
import 'package:reciply/core/helpers/custom_view_animation.dart';
import 'package:reciply/features/home/presentation/views/home_view.dart';
import 'package:reciply/features/home/presentation/views/recipe_info_view.dart';
import 'package:reciply/features/search/presnetation/views/search_view.dart';
import 'package:reciply/features/splash/presentation/views/splash_view.dart';

abstract class AppRouters {
  static const String splashID = '/';
  static const String homeID = '/homeView';
  static const String searchID = '/searchView';
  static const String recipeInfoID = '/recipeInfoView';
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
          duration: 300,
        ),
      ),
      GoRoute(
        path: searchID,
        pageBuilder: (context, state) => CustomViewAnimation(
          child: const SearchView(),
          key: state.pageKey,
          duration: 0,
        ),
      ),
      GoRoute(
        path: recipeInfoID,
        pageBuilder: (context, state) => CustomViewAnimation(
          child: const RecipeInfoView(),
          key: state.pageKey,
          duration: 600,
        ),
      ),
    ],
  );
}
