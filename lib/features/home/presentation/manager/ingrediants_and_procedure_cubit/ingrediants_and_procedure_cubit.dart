import 'package:bloc/bloc.dart';

part 'ingrediants_and_procedure_state.dart';

class IngrediantsAndProcedureCubit extends Cubit<IngrediantsAndProcedureState> {
  IngrediantsAndProcedureCubit() : super(IngrediantsAndProcedureInitial());
  getClicking(int index) {
    if (index == 0) {
      emit(IngrediantsState());
    } else {
      emit(ProcedureState());
    }
  }
}
