import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectone/components/dimensions.dart';
import 'package:projectone/pages/lgoinAndSignUpPage.dart';
import 'package:projectone/widgets/bigText.dart';
import 'package:projectone/widgets/buttons.dart';

class startpage extends StatefulWidget {
  const startpage({super.key});

  @override
  State<startpage> createState() => _startpageState();
}

class _startpageState extends State<startpage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          children: [
             SizedBox(height: Dimensions.height40),

            // text and image 
            Image.asset("assets/images/transportLogo.jpeg", width: Dimensions.imageSizewidth, height: Dimensions.imageSizeHeight,),
             SizedBox(height: Dimensions.height10),
            const BigText(text: "Department of",),
            const BigText(text: "Transportation"),

            //button to go to the next page
            const Spacer(),
            Buttons(text: 'Next', onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: ((context) => const LoginSignupPage())));
            },),
            SizedBox(height: Dimensions.height20)
            
            
          ],
        ),
      ),
    ));
  }
}
