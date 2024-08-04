import 'package:bloc/bloc.dart';
import 'package:reciply/constants.dart';
import 'package:reciply/features/home/data/models/recipe_model/recipe_model.dart';
import 'package:reciply/features/home/data/repos/home_repo_implement.dart';

part 'fetch_pupolar_categories_state.dart';

class FetchPupolarCategoriesCubit extends Cubit<FetchPupolarCategoriesState> {
  FetchPupolarCategoriesCubit(this.homeRepoImplement)
      : super(FetchPupolarCategoriesInitial());
  final HomeRepoImplement homeRepoImplement;

  Future<void> fetchPupolarCategoriesRecipes() async {
    emit(FetchPupolarCategoriesLoading());
    var response = await homeRepoImplement.fetchPupolarCategories(
      url: pupolarCategories,
    );
    response.fold((failure) {
      emit(FetchPupolarCategoriesFailure(failure.errorMsg));
    }, (recipesModel) {
      emit(FetchPupolarCategoriesSuccess(recipesModel));
    });
  }
}
