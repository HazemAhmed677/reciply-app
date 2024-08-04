import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:reciply/core/helpers/custom_view_animation.dart';
import 'package:reciply/core/utils/service_locator.dart';
import 'package:reciply/features/home/data/models/recipe_model/meal.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';
import 'package:reciply/features/home/presentation/manager/fetch_categorized_meals_cubit/fetch_categorized_meals_cubit.dart';
import 'package:reciply/features/home/presentation/manager/fetch_meal_by_id_cubit/fetch_meal_by_id_cubit.dart';
import 'package:reciply/features/home/presentation/manager/fetch_pupolar_categories.dart/fetch_pupolar_categories_cubit.dart';
import 'package:reciply/features/home/presentation/manager/fetch_trending_cubit.dart/fetch_trending_cubit.dart';
import 'package:reciply/features/home/presentation/manager/ingrediants_and_procedure_cubit/ingrediants_and_procedure_cubit.dart';
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
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                //Done
                create: (context) => FetchTrendingCubit(
                  homeRepoImplement: getIt.get<HomeRepoImplement>(),
                )..fetchTrendingRecipes(),
              ),
              BlocProvider(
                //Done
                create: (context) => FetchPupolarCategoriesCubit(
                  homeRepoImplement: getIt.get<HomeRepoImplement>(),
                )..fetchPupolarCategoriesRecipes(),
              ),
              BlocProvider(
                create: (context) => FetchCategorizedMealsCubit(
                  getIt.get<HomeRepoImplement>(),
                )..fetchCategorizedMealsRecipes(
                    category: 'Beef',
                  ),
              ),
              BlocProvider(
                create: (context) => FetchMealByIdCubit(
                  getIt.get<HomeRepoImplement>(),
                ),
              ),
            ],
            child: const HomeView(),
          ),
          key: state.pageKey,
          duration: 300,
        ),
      ),
      GoRoute(
        path: recipeInfoID,
        pageBuilder: (context, state) => CustomViewAnimation(
          child: BlocProvider(
            create: (context) => IngrediantsAndProcedureCubit(),
            child: RecipeInfoView(
              mealModel: state.extra as MealModel,
            ),
          ),
          key: state.pageKey,
          duration: 150,
        ),
      ),
    ],
  );
}
