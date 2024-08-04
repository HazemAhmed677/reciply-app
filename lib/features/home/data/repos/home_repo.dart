import 'package:dartz/dartz.dart';
import 'package:reciply/core/errors/failure_class.dart';
import 'package:reciply/features/home/data/models/categories_model/categories_model.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';

abstract class HomeRepo {
  Future<Either<FaluireService, RecipesModel>> fetchTrendingMeals(
      {required String url});
  Future<Either<FaluireService, CategoriesModel>> fetchPupolarCategories(
      {required String url});
  Future<Either<FaluireService, RecipesModel>> fetchCategorizedMeals(
      {required String url, required String category});
  Future<Either<FaluireService, RecipesModel>> fetchMealByID(
      {required String url});
}
