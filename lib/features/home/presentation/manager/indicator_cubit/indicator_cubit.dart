
import 'package:flutter_bloc/flutter_bloc.dart';

import 'indicator_state.dart';


class IndicatorCubit extends Cubit<IndicatorState> {
  IndicatorCubit() : super(IndicatorInitial());
  int currentIndex = 0;

  void currentIndexChange({required int index}){
    currentIndex = index;
    emit(IndicatorIncrementSuccess());
  }
}
