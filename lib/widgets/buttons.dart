import 'package:flutter/material.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/components/dimensions.dart';

class Buttons extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const Buttons({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: Dimensions.buttonContainerheight,
        width: Dimensions.buttonContainerwidth,
        decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(Dimensions.height20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ]),
        child:  Center(
            child: Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: AppColors.whiteTextColor),
        )),
      ),
    );
  }
}
