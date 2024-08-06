part of 'add_meal_cubit.dart';

sealed class AddMealCubitState {}

final class AddMealCubitInitial extends AddMealCubitState {}

class AddMealSuccess extends AddMealCubitState {}

class AddMealFailure extends AddMealCubitState {
  final String errorMessege;
  AddMealFailure(this.errorMessege);
}
