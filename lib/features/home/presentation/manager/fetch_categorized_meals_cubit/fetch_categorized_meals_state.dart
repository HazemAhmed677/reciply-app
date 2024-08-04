part of 'fetch_categorized_meals_cubit.dart';

abstract class FetchCategorizedMealsState {}

final class FetchCategorizedMealsInitial extends FetchCategorizedMealsState {}

final class FetchCategorizedMealsLoading extends FetchCategorizedMealsState {}

final class FetchCategorizedMealsSuccess extends FetchCategorizedMealsState {
  final RecipesModel recipesModel;
  FetchCategorizedMealsSuccess(this.recipesModel);
}

final class FetchCategorizedMealsFailure extends FetchCategorizedMealsState {
  final String errorMsg;
  FetchCategorizedMealsFailure(this.errorMsg);
}
