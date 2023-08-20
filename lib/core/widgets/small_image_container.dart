import 'package:flutter/material.dart';


class SmallImageContainer extends StatelessWidget {
  const SmallImageContainer({
    Key? key, required this.containerHeight, required this.imagePath
  }) : super(key: key);

  final double containerHeight;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      margin: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover
        ),
      ),
    );
  }
}