import 'dart:convert';

class MealModel {
  String? idMeal;
  String? strMeal;
  dynamic strDrinkAlternate;
  String? strCategory;
  String? strArea;
  String? strInstructions;
  String? strMealThumb;
  String? strTags;
  String? strYoutube;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  String? strIngredient5;
  String? strIngredient6;
  String? strIngredient7;
  String? strIngredient8;
  String? strIngredient9;
  String? strIngredient10;
  String? strIngredient11;
  String? strIngredient12;
  String? strIngredient13;
  String? strIngredient14;
  String? strIngredient15;
  dynamic strIngredient16;
  dynamic strIngredient17;
  dynamic strIngredient18;
  dynamic strIngredient19;
  dynamic strIngredient20;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  String? strMeasure4;
  String? strMeasure5;
  String? strMeasure6;
  String? strMeasure7;
  String? strMeasure8;
  String? strMeasure9;
  String? strMeasure10;
  String? strMeasure11;
  String? strMeasure12;
  String? strMeasure13;
  String? strMeasure14;
  String? strMeasure15;
  dynamic strMeasure16;
  dynamic strMeasure17;
  dynamic strMeasure18;
  dynamic strMeasure19;
  dynamic strMeasure20;
  dynamic strSource;
  dynamic strImageSource;
  dynamic strCreativeCommonsConfirmed;
  dynamic dateModified;

  MealModel({
    this.idMeal,
    this.strMeal,
    this.strDrinkAlternate,
    this.strCategory,
    this.strArea,
    this.strInstructions,
    this.strMealThumb,
    this.strTags,
    this.strYoutube,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strIngredient16,
    this.strIngredient17,
    this.strIngredient18,
    this.strIngredient19,
    this.strIngredient20,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strMeasure16,
    this.strMeasure17,
    this.strMeasure18,
    this.strMeasure19,
    this.strMeasure20,
    this.strSource,
    this.strImageSource,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  factory MealModel.fromMap(Map<String, dynamic> data) => MealModel(
        idMeal: data['idMeal'] as String?,
        strMeal: data['strMeal'] as String?,
        strDrinkAlternate: data['strDrinkAlternate'] as dynamic,
        strCategory: data['strCategory'] as String?,
        strArea: data['strArea'] as String?,
        strInstructions: data['strInstructions'] as String?,
        strMealThumb: data['strMealThumb'] as String?,
        strTags: data['strTags'] as String?,
        strYoutube: data['strYoutube'] as String?,
        strIngredient1: data['strIngredient1'] as String?,
        strIngredient2: data['strIngredient2'] as String?,
        strIngredient3: data['strIngredient3'] as String?,
        strIngredient4: data['strIngredient4'] as String?,
        strIngredient5: data['strIngredient5'] as String?,
        strIngredient6: data['strIngredient6'] as String?,
        strIngredient7: data['strIngredient7'] as String?,
        strIngredient8: data['strIngredient8'] as String?,
        strIngredient9: data['strIngredient9'] as String?,
        strIngredient10: data['strIngredient10'] as String?,
        strIngredient11: data['strIngredient11'] as String?,
        strIngredient12: data['strIngredient12'] as String?,
        strIngredient13: data['strIngredient13'] as String?,
        strIngredient14: data['strIngredient14'] as String?,
        strIngredient15: data['strIngredient15'] as String?,
        strIngredient16: data['strIngredient16'] as dynamic,
        strIngredient17: data['strIngredient17'] as dynamic,
        strIngredient18: data['strIngredient18'] as dynamic,
        strIngredient19: data['strIngredient19'] as dynamic,
        strIngredient20: data['strIngredient20'] as dynamic,
        strMeasure1: data['strMeasure1'] as String?,
        strMeasure2: data['strMeasure2'] as String?,
        strMeasure3: data['strMeasure3'] as String?,
        strMeasure4: data['strMeasure4'] as String?,
        strMeasure5: data['strMeasure5'] as String?,
        strMeasure6: data['strMeasure6'] as String?,
        strMeasure7: data['strMeasure7'] as String?,
        strMeasure8: data['strMeasure8'] as String?,
        strMeasure9: data['strMeasure9'] as String?,
        strMeasure10: data['strMeasure10'] as String?,
        strMeasure11: data['strMeasure11'] as String?,
        strMeasure12: data['strMeasure12'] as String?,
        strMeasure13: data['strMeasure13'] as String?,
        strMeasure14: data['strMeasure14'] as String?,
        strMeasure15: data['strMeasure15'] as String?,
        strMeasure16: data['strMeasure16'] as dynamic,
        strMeasure17: data['strMeasure17'] as dynamic,
        strMeasure18: data['strMeasure18'] as dynamic,
        strMeasure19: data['strMeasure19'] as dynamic,
        strMeasure20: data['strMeasure20'] as dynamic,
        strSource: data['strSource'] as dynamic,
        strImageSource: data['strImageSource'] as dynamic,
        strCreativeCommonsConfirmed:
            data['strCreativeCommonsConfirmed'] as dynamic,
        dateModified: data['dateModified'] as dynamic,
      );

  Map<String, dynamic> toMap() => {
        'idMeal': idMeal,
        'strMeal': strMeal,
        'strDrinkAlternate': strDrinkAlternate,
        'strCategory': strCategory,
        'strArea': strArea,
        'strInstructions': strInstructions,
        'strMealThumb': strMealThumb,
        'strTags': strTags,
        'strYoutube': strYoutube,
        'strIngredient1': strIngredient1,
        'strIngredient2': strIngredient2,
        'strIngredient3': strIngredient3,
        'strIngredient4': strIngredient4,
        'strIngredient5': strIngredient5,
        'strIngredient6': strIngredient6,
        'strIngredient7': strIngredient7,
        'strIngredient8': strIngredient8,
        'strIngredient9': strIngredient9,
        'strIngredient10': strIngredient10,
        'strIngredient11': strIngredient11,
        'strIngredient12': strIngredient12,
        'strIngredient13': strIngredient13,
        'strIngredient14': strIngredient14,
        'strIngredient15': strIngredient15,
        'strIngredient16': strIngredient16,
        'strIngredient17': strIngredient17,
        'strIngredient18': strIngredient18,
        'strIngredient19': strIngredient19,
        'strIngredient20': strIngredient20,
        'strMeasure1': strMeasure1,
        'strMeasure2': strMeasure2,
        'strMeasure3': strMeasure3,
        'strMeasure4': strMeasure4,
        'strMeasure5': strMeasure5,
        'strMeasure6': strMeasure6,
        'strMeasure7': strMeasure7,
        'strMeasure8': strMeasure8,
        'strMeasure9': strMeasure9,
        'strMeasure10': strMeasure10,
        'strMeasure11': strMeasure11,
        'strMeasure12': strMeasure12,
        'strMeasure13': strMeasure13,
        'strMeasure14': strMeasure14,
        'strMeasure15': strMeasure15,
        'strMeasure16': strMeasure16,
        'strMeasure17': strMeasure17,
        'strMeasure18': strMeasure18,
        'strMeasure19': strMeasure19,
        'strMeasure20': strMeasure20,
        'strSource': strSource,
        'strImageSource': strImageSource,
        'strCreativeCommonsConfirmed': strCreativeCommonsConfirmed,
        'dateModified': dateModified,
      };

  List<String> compressAllValidIngrediants() {
    List<String> allIngrediants = [];
    if (strIngredient1 != null && strIngredient1 != '') {
      allIngrediants.add(strIngredient1!);
    }
    if (strIngredient2 != null && strIngredient2 != '') {
      allIngrediants.add(strIngredient2!);
    }
    if (strIngredient3 != null && strIngredient3 != '') {
      allIngrediants.add(strIngredient3!);
    }
    if (strIngredient4 != null && strIngredient4 != '') {
      allIngrediants.add(strIngredient4!);
    }
    if (strIngredient5 != null && strIngredient5 != '') {
      allIngrediants.add(strIngredient5!);
    }
    if (strIngredient6 != null && strIngredient6 != '') {
      allIngrediants.add(strIngredient6!);
    }
    if (strIngredient7 != null && strIngredient7 != '') {
      allIngrediants.add(strIngredient7!);
    }
    if (strIngredient8 != null && strIngredient8 != '') {
      allIngrediants.add(strIngredient8!);
    }
    if (strIngredient9 != null && strIngredient9 != '') {
      allIngrediants.add(strIngredient9!);
    }
    if (strIngredient10 != null && strIngredient10 != '') {
      allIngrediants.add(strIngredient10!);
    }
    if (strIngredient11 != null && strIngredient11 != '') {
      allIngrediants.add(strIngredient11!);
    }
    if (strIngredient12 != null && strIngredient12 != '') {
      allIngrediants.add(strIngredient12!);
    }
    if (strIngredient13 != null && strIngredient13 != '') {
      allIngrediants.add(strIngredient13!);
    }
    if (strIngredient14 != null && strIngredient14 != '') {
      allIngrediants.add(strIngredient14!);
    }
    if (strIngredient5 != null && strIngredient15 != '') {
      allIngrediants.add(strIngredient15!);
    }
    if (strIngredient16 != null && strIngredient16 != '') {
      allIngrediants.add(strIngredient16!);
    }
    if (strIngredient17 != null && strIngredient17 != '') {
      allIngrediants.add(strIngredient17!);
    }
    if (strIngredient18 != null && strIngredient18 != '') {
      allIngrediants.add(strIngredient18!);
    }
    if (strIngredient19 != null && strIngredient19 != '') {
      allIngrediants.add(strIngredient19!);
    }
    if (strIngredient20 != null && strIngredient20 != '') {
      allIngrediants.add(strIngredient20!);
    }
    return allIngrediants;
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MealModel].
  factory MealModel.fromJson(String data) {
    return MealModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MealModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
