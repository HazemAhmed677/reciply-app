part of 'fetch_meal_by_id_cubit.dart';

abstract class FetchMealByIdState {}

final class FetchMealByIdInitial extends FetchMealByIdState {}

final class FetchMealByIDLoading extends FetchMealByIdState {}

final class FetchMealByIDSuccess extends FetchMealByIdState {
  final RecipesModel recipesModel;
  FetchMealByIDSuccess(this.recipesModel);
}

final class FetchMealByIDFailure extends FetchMealByIdState {
  final String errorMsg;
  FetchMealByIDFailure(this.errorMsg);
}
