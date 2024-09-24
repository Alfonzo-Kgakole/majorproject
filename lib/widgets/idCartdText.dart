import 'package:flutter/material.dart';
import 'package:projectone/components/dimensions.dart';

class IDcartBigText extends StatelessWidget {
  final String text;
  const IDcartBigText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: Dimensions.font30, fontWeight: FontWeight.bold),
    );
  }
}
