import 'dart:convert';

class Category {
  String? strCategory;

  Category({this.strCategory});

  factory Category.fromMap(Map<String, dynamic> data) => Category(
        strCategory: data['strCategory'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'strCategory': strCategory,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Category].
  factory Category.fromJson(String data) {
    return Category.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Category] to a JSON string.
  String toJson() => json.encode(toMap());
}
