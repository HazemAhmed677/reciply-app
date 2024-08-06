import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
part 'delete_meal_cubit_state.dart';

class DeleteMealCubit extends Cubit<DeleteMealCubitState> {
  DeleteMealCubit() : super(DeleteMealCubitInitial());

  Future<void> deleteMeal(
      {required MealModel mealModel, required Box<MealModel> mealBox}) async {
    try {
      await mealBox.delete(mealModel.idMeal);
      emit(DeleteMealSuccess());
    } catch (e) {
      emit(
        DeleteMealFaillure(
          e.toString(),
        ),
      );
    }
  }
}
