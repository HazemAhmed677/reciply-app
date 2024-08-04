import 'package:bloc/bloc.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';

part 'fetch_categorized_meals_state.dart';

class FetchCategorizedMealsCubit extends Cubit<FetchCategorizedMealsState> {
  FetchCategorizedMealsCubit(this.homeRepoImplement)
      : super(FetchCategorizedMealsInitial());
  final HomeRepoImplement homeRepoImplement;

  Future<void> fetchCategorizedMealsRecipes({required String category}) async {
    emit(FetchCategorizedMealsLoading());
    String url =
        'https://www.themealdb.com/api/json/v1/1/filter.php?c=$category';
    var response = await homeRepoImplement.fetchTrendingMeals(
      url: url,
    );
    response.fold((failure) {
      emit(FetchCategorizedMealsFailure(failure.errorMsg));
    }, (recipesModel) {
      emit(FetchCategorizedMealsSuccess(recipesModel));
    });
  }
}
