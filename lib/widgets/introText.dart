
import 'package:flutter/material.dart';
import 'package:projectone/components/dimensions.dart';

class IntroText extends StatelessWidget {
  final String text;
  const IntroText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    
    return Text(
      text,
      style: TextStyle(fontSize: Dimensions.font20, fontWeight: FontWeight.bold),
    );
  }
}
