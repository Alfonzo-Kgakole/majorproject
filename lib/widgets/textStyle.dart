

import 'package:flutter/material.dart';
import 'package:projectone/components/dimensions.dart';

class CommonText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  const CommonText({super.key, required this.text, this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: Dimensions.font20, fontWeight: fontWeight));
  }
}
