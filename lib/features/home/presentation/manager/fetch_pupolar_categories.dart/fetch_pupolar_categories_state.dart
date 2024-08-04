part of 'fetch_pupolar_categories_cubit.dart';

abstract class FetchPupolarCategoriesState {}

final class FetchPupolarCategoriesInitial extends FetchPupolarCategoriesState {}

final class FetchPupolarCategoriesLoading extends FetchPupolarCategoriesState {}

final class FetchPupolarCategoriesSuccess extends FetchPupolarCategoriesState {
  final RecipesModel recipesModel;
  FetchPupolarCategoriesSuccess(this.recipesModel);
}

final class FetchPupolarCategoriesFailure extends FetchPupolarCategoriesState {
  final String errorMsg;
  FetchPupolarCategoriesFailure(this.errorMsg);
}