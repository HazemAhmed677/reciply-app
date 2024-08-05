import 'package:bloc/bloc.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/core/models/recipe_model/recipe_model.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';

part 'fetch_recent_serch_meals_state.dart';

class FetchRecentSerchMealsCubit extends Cubit<FetchRecentSerchMealsState> {
  FetchRecentSerchMealsCubit({required this.homeRepoImplement})
      : super(FetchRecentSerchMealsInitial());
  final HomeRepoImplement homeRepoImplement;

  Future<void> fetchRecentSearchMeals() async {
    emit(FetchRecentSerchMealsLoading());
    var response = await homeRepoImplement.fetchRecipes(
      url: kRecentSearchUrl,
    );
    response.fold((failure) {
      emit(FetchRecentSerchMealsFailure(failure.errorMsg));
    }, (recipesModel) {
      emit(FetchRecentSerchMealsSuccess(recipesModel));
    });
  }
}
