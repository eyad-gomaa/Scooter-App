import 'package:flutter/material.dart';
import 'adds_list_view.dart';
import 'adds_container.dart';
import 'data_list_View.dart';


class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> cont = [
      const AddsContainer(imgUrl: "assets/images/add.png",),
      const AddsContainer(imgUrl: "assets/images/add.png",),
      const AddsContainer(imgUrl: "assets/images/add.png",),
    ];
    return Column(
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
    );
  }
}












