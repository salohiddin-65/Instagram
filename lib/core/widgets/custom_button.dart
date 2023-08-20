// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    required this.label,
    required this.onPress,
    required this.buttonColor, required this.labelColor,
    this.buttonElevation=0.0
  }) : super(key: key);

  final String label;
  final VoidCallback onPress;
  final Color buttonColor;
  final Color labelColor;
  double buttonElevation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(40),
          backgroundColor: buttonColor,
          elevation: buttonElevation,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: onPress,
        child: Text(label,style: TextStyle(color: labelColor,fontWeight: FontWeight.bold),),
      ),
    );
  }
}