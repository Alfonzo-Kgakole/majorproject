import 'package:flutter/material.dart';
import 'package:projectone/components/AppColors.dart';

class bookingSupportMenu extends StatefulWidget {
  const bookingSupportMenu({super.key});

  @override
  State<bookingSupportMenu> createState() => _bookingSupportMenuState();
}

class _bookingSupportMenuState extends State<bookingSupportMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          color: AppColors.mainColor,
          child: Center(
            child: Text("Enter a"),
          ),
        ),
        const Divider(),
        Container(
          height: 50,
          color: AppColors.mainColor,
          child: Center(
            child: Text("Enter b"),
          ),
        ),
        const Divider(),
        Container(
          height: 50,
          color: AppColors.mainColor,
          child: Center(
            child: Text("Enter c"),
          ),
        ),
        const Divider(),
        
      ],
    );
  }
}
