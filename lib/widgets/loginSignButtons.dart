
import 'package:flutter/material.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/components/dimensions.dart';

class LoginSignButtons extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const LoginSignButtons({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin:  EdgeInsets.symmetric(horizontal: Dimensions.height20, vertical: Dimensions.width20),
        height: Dimensions.loginSignButtonsContainerHeight * 0.8,
        width: Dimensions.loginSignButtonsContainerwidth *  0.8,
        decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            boxShadow: const [
              BoxShadow(
                color: AppColors.blackColor,
                spreadRadius: 3,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ]),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: Dimensions.font20,
              color: AppColors.whiteTextColor,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
