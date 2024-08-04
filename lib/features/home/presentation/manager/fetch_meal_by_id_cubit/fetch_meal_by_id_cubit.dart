import 'package:bloc/bloc.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';

part 'fetch_meal_by_id_state.dart';

class FetchMealByIdCubit extends Cubit<FetchMealByIdState> {
  FetchMealByIdCubit(this.homeRepoImplement) : super(FetchMealByIdInitial());
  final HomeRepoImplement homeRepoImplement;

  Future<dynamic> fetchMealByID({required int id}) async {
    emit(FetchMealByIDLoading());
    String url = 'https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id';
    var response = await homeRepoImplement.fetchMealByID(
      url: url,
    );
    late RecipesModel rrecipesModel;
    print(response);
    response.fold((failure) {
      emit(FetchMealByIDFailure(failure.errorMsg));
    }, (recipesModel) {
      emit(FetchMealByIDSuccess(recipesModel));
      rrecipesModel = recipesModel;
    });
    return rrecipesModel;
  }
}
