import 'dart:convert';

import 'meal_model.dart';

class RecipesModel {
  List<MealModel>? meals;

  RecipesModel({this.meals});

  factory RecipesModel.fromMap(Map<String, dynamic> data) => RecipesModel(
        meals: (data['meals'] as List<dynamic>?)
            ?.map((e) => MealModel.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'meals': meals?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RecipesModel].
  factory RecipesModel.fromJson(String data) {
    return RecipesModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [RecipesModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
