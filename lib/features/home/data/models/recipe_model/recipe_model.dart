import 'dart:convert';

import 'meal.dart';

class RecipesModel {
  List<Meal>? meals;

  RecipesModel({this.meals});

  factory RecipesModel.fromMap(Map<String, dynamic> data) => RecipesModel(
        meals: (data['meals'] as List<dynamic>?)
            ?.map((e) => Meal.fromMap(e as Map<String, dynamic>))
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
