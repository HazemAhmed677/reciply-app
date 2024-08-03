import 'package:dartz/dartz.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';

abstract class HomeRepo {
  Future<Either<dynamic, RecipesModel>> fetchTrendingMeals();
  Future<Either<dynamic, RecipesModel>> fetchPupolarCategories();
  Future<Either<dynamic, RecipesModel>> fetchCategoryMeals();
}
