part of 'fetch_recent_serch_meals_cubit.dart';

abstract class FetchRecentSerchMealsState {}

final class FetchRecentSerchMealsInitial extends FetchRecentSerchMealsState {}

final class FetchRecentSerchMealsLoading extends FetchRecentSerchMealsState {}

final class FetchRecentSerchMealsSuccess extends FetchRecentSerchMealsState {
  final RecipesModel recipesModel;
  FetchRecentSerchMealsSuccess(this.recipesModel);
}

final class FetchRecentSerchMealsFailure extends FetchRecentSerchMealsState {
  final String errorMsg;
  FetchRecentSerchMealsFailure(this.errorMsg);
}
