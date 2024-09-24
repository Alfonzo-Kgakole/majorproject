import 'package:flutter/material.dart';
import 'package:projectone/components/dimensions.dart';

class BigText extends StatelessWidget {
  final String text;
  const BigText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: Dimensions.font30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
