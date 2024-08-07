import 'package:bloc/bloc.dart';

part 'switch_views_state.dart';

class SwitchViewsCubit extends Cubit<SwitchViewsState> {
  SwitchViewsCubit() : super(SwitchViewsHome());
  int index = 0;
  emitViews({required int currentIndex}) {
    if (currentIndex == 0) {
      index = 0;
      emit(SwitchViewsHome());
    } else if (currentIndex == 1) {
      index = 1;
      emit(SwitchViewsSearch());
    } else {
      index = 2;
      emit(SwitchViewsSaved());
    }
  }
}
