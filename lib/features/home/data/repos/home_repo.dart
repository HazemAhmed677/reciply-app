import 'package:dartz/dartz.dart';
import 'package:reciply/core/errors/failure_class.dart';
import 'package:reciply/features/home/data/models/categories_model/categories_model.dart';
import 'package:reciply/features/home/data/models/categorized_meals_model/categorized_meals_model.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';

abstract class HomeRepo {
  Future<Either<FaluireService, RecipesModel>> fetchRecipes(
      {required String url});
  Future<Either<FaluireService, CategoriesModel>> fetchPupolarCategories(
      {required String url});
  Future<Either<FaluireService, CategorizedMealsModel>> fetchCategorizedMeals(
      {required String url});
  Future<Either<FaluireService, RecipesModel>> fetchMealByID(
      {required String url});
}
