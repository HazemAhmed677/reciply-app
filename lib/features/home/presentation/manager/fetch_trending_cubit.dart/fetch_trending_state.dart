part of 'fetch_trending_cubit.dart';

abstract class FetchTrendingState {}

final class FetchTrendingInitial extends FetchTrendingState {}

final class FetchTrendingLoading extends FetchTrendingState {}

final class FetchTrendingSuccess extends FetchTrendingState {
  final RecipesModel recipesModel;
  FetchTrendingSuccess(this.recipesModel);
}

final class FetchTrendingFailure extends FetchTrendingState {
  final String errorMsg;
  FetchTrendingFailure(this.errorMsg);
}
