import 'package:dartz/dartz.dart';
import 'package:reciply/core/errors/failure_class.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';

abstract class HomeRepo {
  Future<Either<FaluireService, RecipesModel>> fetchTrendingMeals(
      {required String url});
  Future<Either<FaluireService, RecipesModel>> fetchPupolarCategories(
      {required String url});
  Future<Either<FaluireService, RecipesModel>> fetchCategoryMeals(
      {required String url});
}
