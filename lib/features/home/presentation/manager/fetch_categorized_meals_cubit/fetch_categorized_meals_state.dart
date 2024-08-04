part of 'fetch_categorized_meals_cubit.dart';

abstract class FetchCategorizedMealsState {}

final class FetchCategorizedMealsInitial extends FetchCategorizedMealsState {}

final class FetchCategorizedMealsLoading extends FetchCategorizedMealsState {}

final class FetchCategorizedMealsSuccess extends FetchCategorizedMealsState {
  final CategorizedMealsModel categorizedMealsModel;
  FetchCategorizedMealsSuccess(this.categorizedMealsModel);
}

final class FetchCategorizedMealsFailure extends FetchCategorizedMealsState {
  final String errorMsg;
  FetchCategorizedMealsFailure(this.errorMsg);
}
