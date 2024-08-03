import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/helpers/custom_view_animation.dart';
import 'package:reciply/core/utils/api_service.dart';
import 'package:reciply/features/home/data/models/recipe_model/meal.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';
import 'package:reciply/features/home/presentation/manager/fetch_trending_cubit.dart/fetch_trending_cubit.dart';
import 'package:reciply/features/home/presentation/views/home_view.dart';
import 'package:reciply/features/home/presentation/views/recipe_info_view.dart';
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
          child: BlocProvider(
            create: (context) => FetchTrendingCubit(
              homeRepoImplement: HomeRepoImplement(
                apiService: ApiService(),
              ),
            )..fetchTrendingRecipes(),
            child: const HomeView(),
          ),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      // GoRoute(
      //   path: searchID,
      //   pageBuilder: (context, state) => CustomViewAnimation(
      //     child: const SearchView(),
      //     key: state.pageKey,
      //     duration: 0,
      //   ),
      // ),
      GoRoute(
        path: recipeInfoID,
        pageBuilder: (context, state) => CustomViewAnimation(
          child: RecipeInfoView(
            mealModel: state.extra as MealModel,
          ),
          key: state.pageKey,
          duration: 200,
        ),
      ),
    ],
  );
}
