import 'meal.dart';

class CategorizedMealsModel {
  List<Meal>? meals;

  CategorizedMealsModel({this.meals});

  factory CategorizedMealsModel.fromJson(Map<String, dynamic> json) {
    return CategorizedMealsModel(
      meals: (json['meals'] as List<dynamic>?)
          ?.map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'meals': meals?.map((e) => e.toJson()).toList(),
      };
}
