import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/models/recipe_model/meal_model.dart';
part 'delete_meal_cubit_state.dart';

class DeleteMealCubit extends Cubit<DeleteMealCubitState> {
  DeleteMealCubit() : super(DeleteMealCubitInitial());

  Future<void> deleteMeal({required MealModel mealModel}) async {
    try {
      var mealBox = Hive.box<MealModel>(kMealBox);
      await mealBox.delete(mealModel);
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
