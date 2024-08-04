import 'dart:convert';

import 'meal.dart';

class CategoriesModel {
  List<Category>? meals;

  CategoriesModel({this.meals});

  factory CategoriesModel.fromMap(Map<String, dynamic> data) {
    return CategoriesModel(
      meals: (data['meals'] as List<dynamic>?)
          ?.map((e) => Category.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'meals': meals?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CategoriesModel].
  factory CategoriesModel.fromJson(String data) {
    return CategoriesModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [CategoriesModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
