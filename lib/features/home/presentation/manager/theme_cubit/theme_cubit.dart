import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/home/presentation/manager/theme_cubit/theme_state.dart';

class ThemeCubit extends Cubit<AppThemeState>  {
  ThemeCubit() : super(ThemeInitial());
  bool switchValue = true;

  void setLightMode() async{
    switchValue = false;
    emit(SetLightMode());
  }

  void setDarkMode() {
    switchValue = true;
    emit(SetDarkMode());
  }
}
