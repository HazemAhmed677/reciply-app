import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
part 'add_meal_cubit_state.dart';

class AddMealCubit extends Cubit<AddMealCubitState> {
  AddMealCubit() : super(AddMealCubitInitial());
  addMeal(
      {required MealModel mealModel, required Box<MealModel> mealBox}) async {
    try {
      mealBox = Hive.box<MealModel>(kMealBox);
      String id = mealModel.idMeal!;
      await mealBox.put(id, mealModel);
      print(mealBox);
      emit(AddMealSuccess());
    } catch (e) {
      emit(
        AddMealFailure(
          e.toString(),
        ),
      );
    }
  }
}
