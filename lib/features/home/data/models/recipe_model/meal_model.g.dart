// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealModelAdapter extends TypeAdapter<MealModel> {
  @override
  final int typeId = 0;

  @override
  MealModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealModel(
      strMeal: fields[0] as String?,
      strInstructions: fields[1] as String?,
      strMealThumb: fields[2] as String?,
      strYoutube: fields[3] as String?,
      strIngredient1: fields[4] as String?,
      strIngredient2: fields[5] as String?,
      strIngredient3: fields[6] as String?,
      strIngredient4: fields[7] as String?,
      strIngredient5: fields[8] as String?,
      strIngredient6: fields[9] as String?,
      strIngredient7: fields[10] as String?,
      strIngredient8: fields[11] as String?,
      strIngredient9: fields[12] as String?,
      strIngredient10: fields[13] as String?,
      strIngredient11: fields[14] as String?,
      strIngredient12: fields[15] as String?,
      strIngredient13: fields[16] as String?,
      strIngredient14: fields[17] as String?,
      strIngredient15: fields[18] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MealModel obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.strMeal)
      ..writeByte(1)
      ..write(obj.strInstructions)
      ..writeByte(2)
      ..write(obj.strMealThumb)
      ..writeByte(3)
      ..write(obj.strYoutube)
      ..writeByte(4)
      ..write(obj.strIngredient1)
      ..writeByte(5)
      ..write(obj.strIngredient2)
      ..writeByte(6)
      ..write(obj.strIngredient3)
      ..writeByte(7)
      ..write(obj.strIngredient4)
      ..writeByte(8)
      ..write(obj.strIngredient5)
      ..writeByte(9)
      ..write(obj.strIngredient6)
      ..writeByte(10)
      ..write(obj.strIngredient7)
      ..writeByte(11)
      ..write(obj.strIngredient8)
      ..writeByte(12)
      ..write(obj.strIngredient9)
      ..writeByte(13)
      ..write(obj.strIngredient10)
      ..writeByte(14)
      ..write(obj.strIngredient11)
      ..writeByte(15)
      ..write(obj.strIngredient12)
      ..writeByte(16)
      ..write(obj.strIngredient13)
      ..writeByte(17)
      ..write(obj.strIngredient14)
      ..writeByte(18)
      ..write(obj.strIngredient15);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
