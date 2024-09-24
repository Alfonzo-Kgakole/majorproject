import 'package:flutter/material.dart';
import 'package:projectone/components/AppColors.dart';

class carDetailBox extends StatelessWidget {
  final String firstText;
  final String secondText;
  final IconData icon;
  const carDetailBox({super.key, required this.firstText, required this.secondText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.mainColor, width: 4),
          borderRadius: BorderRadius.circular(10)),
      child:  Column(
        children: [
          SizedBox(height: 5),
          Icon(icon),
          SizedBox(height: 5),
          Text(
            firstText,
            style: TextStyle(color: AppColors.grayTextColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            secondText,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
