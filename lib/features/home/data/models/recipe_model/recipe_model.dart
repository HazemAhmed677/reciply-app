import 'dart:convert';

import 'meal.dart';

class RecipeModel {
  List<Meal>? meals;

  RecipeModel({this.meals});

  factory RecipeModel.fromMap(Map<String, dynamic> data) => RecipeModel(
        meals: (data['meals'] as List<dynamic>?)
            ?.map((e) => Meal.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'meals': meals?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RecipeModel].
  factory RecipeModel.fromJson(String data) {
    return RecipeModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [RecipeModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
