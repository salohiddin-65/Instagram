import 'package:flutter/material.dart';

class CurrentUserStoryImg extends StatelessWidget {
  const CurrentUserStoryImg({
    Key? key,
    required this.label,
    required this.containerOneWidth,
    required this.containerOneHeight,
    required this.positionTop,
    required this.positionLeft,
  }) : super(key: key);

  final String label;
  final double containerOneWidth;
  final double containerOneHeight;
  final double positionTop;
  final double positionLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.all(5),
      child: Stack(
        children: [
          Container(
            width: containerOneWidth,
            height: containerOneHeight,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.red, width: 3),
            ),
            child: const Padding(
              padding: EdgeInsets.all(3.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/adams.jpeg'),
                // radius: 50,
              ),
            ),
          ),
          Positioned(
            left: positionLeft,
            top: positionTop,
            child: IconButton(
              onPressed: () {},
              icon: Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Icon(
                  Icons.add_circle,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          Positioned(
            top: 90,
            left: 10,
            child: Text(
              label,
              style: const TextStyle(),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}