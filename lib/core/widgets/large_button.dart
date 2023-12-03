import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class LargeButton extends StatelessWidget {
  const LargeButton({Key? key, this.onTap, required this.text}) : super(key: key);
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width / 2,
        height: 52,
        decoration: BoxDecoration(
            color: ColorManager.redColor,
            borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
              text,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}
