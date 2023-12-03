import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/theme/dark_theme.dart';
import 'core/utils/app_router.dart';
import 'features/add_data/data/data_model/data_model.dart';

void main() async{
  await Hive.initFlutter();
  Hive.registerAdapter(DataAdapter());
  await Hive.openBox<Data>("data");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: darkTheme(),
        routerConfig: router
    );
  }
}

