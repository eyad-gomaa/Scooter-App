import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'change_page_state.dart';

class ChangePageCubit extends Cubit<ChangePageState> {
  ChangePageCubit() : super(ChangePageInitial());
  int currentIndex = 0;

  void changePage({required PageController controller}){
    currentIndex += 1;
    controller.nextPage(duration: const Duration(milliseconds: 200), curve: Curves.easeIn);
    emit(ChangePageSuccess());
  }
}
