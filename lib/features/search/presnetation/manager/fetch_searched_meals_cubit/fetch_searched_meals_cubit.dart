import 'package:bloc/bloc.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';

part 'fetch_searched_meals_state.dart';

class FetchSearchedMealsCubit extends Cubit<FetchSearchedMealsState> {
  FetchSearchedMealsCubit({required this.homeRepoImplement})
      : super(FetchSearchedMealsInitial());
  final HomeRepoImplement homeRepoImplement;

  Future<void> fetchTrendingRecipes({required String input}) async {
    emit(FetchSearchedMealsLoading());
    String url = 'https://www.themealdb.com/api/json/v1/1/search.php?f=$input';
    var response = await homeRepoImplement.fetchRecipes(
      url: url,
    );
    response.fold((failure) {
      emit(FetchSearchedMealsFailure(failure.errorMsg));
    }, (recipesModel) {
      emit(FetchSearchedMealsSuccess(recipesModel));
    });
  }
}
