import 'package:flutter/material.dart';

class AddsContainer extends StatelessWidget {
  const AddsContainer({Key? key, required this.imgUrl}) : super(key: key);
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              image: AssetImage(
                  imgUrl ),
              fit: BoxFit.cover
          )
      ),
    );
  }
}
