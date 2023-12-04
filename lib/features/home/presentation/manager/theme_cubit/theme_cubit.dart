import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/home/presentation/manager/theme_cubit/theme_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeCubit extends Cubit<AppThemeState>  {
  ThemeCubit() : super(ThemeInitial());
  bool switchValue = true;

  void setLightMode() async{
    emit(SetLightMode());
  }

  void setDarkMode() {
    switchValue = true;
    emit(SetDarkMode());
  }
}
