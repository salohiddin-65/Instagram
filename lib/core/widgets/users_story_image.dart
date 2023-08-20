// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class UserStoryImg extends StatelessWidget {
  UserStoryImg({
    Key? key,
    required this.containerOneWidth,
    required this.containerOneHeight,
    required this.containerTwoWidth,
    required this.containerTwoHeight,
    required this.textPositionTop,
    required this.textLabel,
    required this.storyColor,
    this.storyColorBorder=1, required this.imageString,
  }) : super(key: key);

  final double containerOneWidth;
  final double containerOneHeight;
  final double containerTwoWidth;
  final double containerTwoHeight;
  final double textPositionTop;
  final String textLabel;
  final String imageString;
  final Color storyColor;
  double storyColorBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: containerOneWidth,
      height: containerOneHeight,
      margin: const EdgeInsets.only(left: 10, right: 10),
      child: Stack(
        children: [
          Container(
            width: containerTwoWidth,
            height: containerTwoHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: storyColor, width: storyColorBorder)),
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: AssetImage(imageString),
                radius: 50,
              ),
            ),
          ),
          Positioned(
            top: textPositionTop,
            child: Text(
              textLabel,
              style: const TextStyle(),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}