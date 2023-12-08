import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:scooter_app/core/utils/bloc_observer.dart';
import 'package:scooter_app/features/home/data/repo/home_repo_impl.dart';
import 'package:scooter_app/features/home/presentation/manager/fetch_data_cubit/fetch_data_cubit.dart';
import 'package:scooter_app/features/home/presentation/manager/theme_cubit/theme_cubit.dart';
import 'core/theme/dark_theme.dart';
import 'core/theme/light_theme.dart';
import 'core/utils/app_router.dart';
import 'features/add_data/data/data_model/data_model.dart';
import 'features/home/presentation/manager/theme_cubit/theme_state.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DataAdapter());
  await Hive.openBox<Data>("data");
  Bloc.observer = AppBlocObserver();
    runApp(MultiBlocProvider(

    providers: [
      BlocProvider(create: (context) => ThemeCubit(),),
      BlocProvider(create: (context) => FetchDataCubit(HomeRepoImpl())..fetchData(),),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, AppThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            theme: lightTheme(),
            darkTheme: darkTheme(),
            themeMode: BlocProvider.of<ThemeCubit>(context).switchValue
                ? ThemeMode.dark
                : ThemeMode.light,
            routerConfig: router);
      },
    );
  }
}
