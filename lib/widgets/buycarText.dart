
import 'package:flutter/material.dart';

class BuyCarTextSmall extends StatelessWidget {
  final String text;
  final Color? textColor;
  const BuyCarTextSmall({super.key, required this.text, this.textColor, });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: textColor,
      ),
    );
  }
}
