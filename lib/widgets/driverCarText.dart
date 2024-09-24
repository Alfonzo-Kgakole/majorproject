import 'package:flutter/material.dart';

class driverCardText extends StatelessWidget {
  final String text;
  const driverCardText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12));
  }
}
