import 'package:bloc/bloc.dart';
import 'package:reciply/features/home/data/models/categorized_meals_model/categorized_meals_model.dart';
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
    var response = await homeRepoImplement.fetchCategorizedMeals(
      url: url,
    );
    response.fold((failure) {
      emit(FetchCategorizedMealsFailure(failure.errorMsg));
    }, (categorizedMealsModel) {
      emit(FetchCategorizedMealsSuccess(categorizedMealsModel));
    });
  }
}
