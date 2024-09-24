import 'package:flutter/material.dart';
import 'package:projectone/components/dimensions.dart';
import 'package:projectone/pages/Signpage.dart';
import 'package:projectone/pages/loginpage.dart';
import 'package:projectone/widgets/introText.dart';
import 'package:projectone/widgets/loginSignButtons.dart';

class LoginSignupPage extends StatefulWidget {
  const LoginSignupPage({super.key});

  @override
  State<LoginSignupPage> createState() => _LoginSignupPageState();
}

class _LoginSignupPageState extends State<LoginSignupPage> {
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: Dimensions.height20),
            Image.asset("assets/images/transportLogo.jpeg", width: Dimensions.imageSizewidth, height: Dimensions.imageSizeHeight,),
            SizedBox(
              height: Dimensions.height10,
            ),
            const IntroText(
              text: "Get Access To Your Driver's License",
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            const IntroText(
              text: "And Be Able To Buy A Car",
            ),
            SizedBox(
              height: Dimensions.height10,
            ),
            const Spacer(),
            Row(
              children: [
                LoginSignButtons(
                  text: 'Login',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const Loginpage())));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                LoginSignButtons(
                  text: 'Sign',
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const SignInPage())));
                  },
                ),
              ],
            ),
            SizedBox(
              height: Dimensions.height20,
            )
          ],
        ),
      ),
    );
  }
}
