import 'package:dartz/dartz.dart';
import 'package:reciply/core/errors/failure_class.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';

abstract class SearchRepo {
  Future<Either<FaluireService, RecipesModel>> fetchRecentSearchMeals(
      {required String url});
  Future<Either<FaluireService, RecipesModel>> fetchSearchedMeals(
      {required String url});
}
