import 'package:reciply/core/models/recipe_model/recipe_model.dart';

abstract class SavedRepos {
  Future<RecipesModel> fetchSavedMealsFromHive();
}
