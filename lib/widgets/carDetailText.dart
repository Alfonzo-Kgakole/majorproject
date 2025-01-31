import 'package:flutter/material.dart';

class CarDetailText extends StatelessWidget {
  final String text;
  const CarDetailText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
