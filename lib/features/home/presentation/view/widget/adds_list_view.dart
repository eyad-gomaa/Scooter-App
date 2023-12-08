import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/core/resources/color_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../manager/indicator_cubit/indicator_cubit.dart';
import '../../manager/indicator_cubit/indicator_state.dart';

class AddsListView extends StatefulWidget {
  const AddsListView({
    super.key,
    required this.cont,
  });

  final List<Widget> cont;

  @override
  State<AddsListView> createState() => _AddsListViewState();
}

class _AddsListViewState extends State<AddsListView> {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => IndicatorCubit(),
  child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: BlocBuilder<IndicatorCubit, IndicatorState>(
  builder: (context, state) {
    return Column(
        children: [
          CarouselSlider.builder(
            carouselController: CarouselControllerImpl(),
            itemCount: 3,
            itemBuilder: (context, index, realIndex) {
              return widget.cont[index];
            },
            options: CarouselOptions(
                height: MediaQuery.sizeOf(context).height/7, onPageChanged: (index, reason) {
              BlocProvider.of<IndicatorCubit>(context).currentIndexChange(index: index);
            }),

          ),
          const SizedBox(height: 20,),
          AnimatedSmoothIndicator(
            activeIndex: BlocProvider.of<IndicatorCubit>(context).currentIndex,
            count: widget.cont.length,
            effect: WormEffect(activeDotColor: ColorManager.redColor,dotWidth: 15,dotHeight: 15),
          )
        ],
      );
  },
),
    ),
);
  }
}