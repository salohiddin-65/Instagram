// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.hintString,
    this.obscureString = false,
    this.containerFilled = false,
    this.borderEnabled = false,
    this.passwordSuffixIcon,
    this.searchPrefixIcon,
  }) : super(key: key);

  final String hintString;
  bool obscureString;
  bool borderEnabled;
  bool containerFilled;
  Widget? passwordSuffixIcon;
  Widget? searchPrefixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: TextField(
        obscureText: obscureString,
        decoration: InputDecoration(
          filled: containerFilled,
          prefixIcon: searchPrefixIcon,
          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
          suffixIcon: passwordSuffixIcon,
          hintText: hintString,
          enabled: borderEnabled,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}