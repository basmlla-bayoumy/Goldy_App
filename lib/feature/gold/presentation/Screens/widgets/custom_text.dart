import 'package:flutter/material.dart';
import 'package:goldy_app/core/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
