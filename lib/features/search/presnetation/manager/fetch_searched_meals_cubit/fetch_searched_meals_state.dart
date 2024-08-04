part of 'fetch_searched_meals_cubit.dart';

abstract class FetchSearchedMealsState {}

final class FetchSearchedMealsInitial extends FetchSearchedMealsState {}

final class FetchSearchedMealsLoading extends FetchSearchedMealsState {}

final class FetchSearchedMealsSuccess extends FetchSearchedMealsState {
  final RecipesModel recipesModel;
  FetchSearchedMealsSuccess(this.recipesModel);
}

final class FetchSearchedMealsFailure extends FetchSearchedMealsState {
  final String errorMsg;
  FetchSearchedMealsFailure(this.errorMsg);
}
