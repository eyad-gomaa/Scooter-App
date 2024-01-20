import 'package:flutter/material.dart';

class ContainerIcon extends StatelessWidget {
  const ContainerIcon({
    super.key, required this.icon, required this.color,
  });
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.sizeOf(context).width-200,
        height: 30,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Icon(icon,color: Colors.white,));
  }
}