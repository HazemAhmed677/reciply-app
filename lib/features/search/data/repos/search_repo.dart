import 'package:dartz/dartz.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';

abstract class SearchRepo {
  Future<Either<dynamic, RecipesModel>> fetchSearchedMeals();
}
