import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';

abstract class SavedRepos {
  Future<RecipesModel> fetchSavedMealsFromHive();
}
