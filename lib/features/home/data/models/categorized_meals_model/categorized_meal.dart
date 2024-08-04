class CategorizedMeal {
  String? strMeal;
  String? strMealThumb;
  String? idMeal;

  CategorizedMeal({this.strMeal, this.strMealThumb, this.idMeal});

  factory CategorizedMeal.fromJson(Map<String, dynamic> json) =>
      CategorizedMeal(
        strMeal: json['strMeal'] as String?,
        strMealThumb: json['strMealThumb'] as String?,
        idMeal: json['idMeal'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'strMeal': strMeal,
        'strMealThumb': strMealThumb,
        'idMeal': idMeal,
      };
}
