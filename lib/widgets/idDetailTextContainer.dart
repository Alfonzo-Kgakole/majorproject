import 'package:flutter/material.dart';
import 'package:projectone/components/AppColors.dart';

class IdDetailTextContainer extends StatelessWidget {
  final String text;
  final Color? color;

  const IdDetailTextContainer({required this.text, this.color, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? AppColors.blackColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}