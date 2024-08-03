import 'package:bloc/bloc.dart';

part 'ingrediants_and_procedure_state.dart';

class IngrediantsAndProcedureCubit extends Cubit<IngrediantsAndProcedureState> {
  IngrediantsAndProcedureCubit() : super(IngrediantsAndProcedureInitial());
  void getClicking(int index) {
    if (index == 1) {
      emit(ProcedureState());
    } else {
      emit(IngrediantsState());
    }
  }
}
