part of 'delete_meal_cubit.dart';

sealed class DeleteMealCubitState {}

final class DeleteMealCubitInitial extends DeleteMealCubitState {}

final class DeleteMealSuccess extends DeleteMealCubitState {}

final class DeleteMealFaillure extends DeleteMealCubitState {
  final String errorMsg;

  DeleteMealFaillure(this.errorMsg);
}
