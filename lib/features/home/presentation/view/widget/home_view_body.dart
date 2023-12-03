import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/core/resources/color_manager.dart';
import 'package:scooter_app/features/home/data/repo/home_repo_impl.dart';
import 'package:scooter_app/features/home/presentation/manager/fetch_data_cubit/fetch_data_cubit.dart';

import '../../manager/fetch_data_cubit/fetch_data_state.dart';
import 'adds_list_view.dart';
import 'adds_container.dart';
import 'data_list_View.dart';
import 'home_data_container.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cont = [
      const AddsContainer(imgUrl: "assets/images/add.png",),
      const AddsContainer(imgUrl: "assets/images/add.png",),
      const AddsContainer(imgUrl: "assets/images/add.png",),
    ];
    return BlocProvider(
      create: (context) => FetchDataCubit(HomeRepoImpl())..fetchData(),
      child: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: AddsListView(cont: cont),
                ),
                const SliverToBoxAdapter(
                  child: DataListView(),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}












