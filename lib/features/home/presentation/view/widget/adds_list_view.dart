import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AddsListView extends StatelessWidget {
  const AddsListView({
    super.key,
    required this.cont,
  });

  final List<Widget> cont;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: CarouselSlider.builder(
        itemCount: 3,
        itemBuilder: (context, index, realIndex) => cont[index],
        options: CarouselOptions(
            height: 150, onPageChanged: (index, reason) {}),

      ),
    );
  }
}