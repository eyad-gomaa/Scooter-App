import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/core/resources/color_manager.dart';
import 'package:scooter_app/features/home/presentation/view/widget/home_drawer.dart';
import 'package:scooter_app/features/home/presentation/view/widget/home_view_body.dart';

import '../manager/theme_cubit/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Scooter App", style: Theme
            .of(context)
            .textTheme
            .displayMedium,),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const SafeArea(
        child: HomeViewBody(),
      ),
    );
  }
}
