import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/components/dimensions.dart';
import 'package:projectone/database/firebase_auth.dart';
import 'package:projectone/pages/introDetails.dart';
import 'package:projectone/pages/loginpage.dart';
import 'package:projectone/widgets/bigText.dart';
import 'package:projectone/widgets/loginSignButtons.dart';
import 'package:projectone/widgets/textStyle.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  //connecting to database
  final FirebaseAuthServer _auth = FirebaseAuthServer();
  //text editing controllers
  final TextEditingController firstnamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    firstnamecontroller.dispose();
    passwordcontroller.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    print('Screen height: $screenHeight');
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteTextColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: Dimensions.height40,
              ),
              const BigText(text: "Create Account"),
              SizedBox(
                height: Dimensions.width10,
              ),
              CommonText(text: "Please fill the input below here"),
              Image.asset(
                "assets/images/transportLogo.jpeg",
                width: Dimensions.imageSizewidth,
                height: Dimensions.imageSizeHeight,
              ),
              SizedBox(height: Dimensions.height20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.height20),
                child: Column(
                  children: [
                    //Id textfield
                    SizedBox(
                      height: Dimensions.height15,
                    ),

                    //email textfield
                    SizedBox(
                      height: Dimensions.height15,
                    ),
                    TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                            hintText: "Email",
                            prefixIcon: const Icon(
                              Icons.mail,
                              color: AppColors.mainColor,
                            ),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.height20),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor)))),
                    //email textfield
                    SizedBox(
                      height: Dimensions.height15,
                    ),

                    //password texfield
                    SizedBox(height: Dimensions.height20),
                    TextField(
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                            hintText: "Password",
                            prefixIcon: const Icon(
                              Icons.password,
                              color: AppColors.mainColor,
                            ),
                            suffixIcon: const Icon(
                              Icons.lock,
                              color: AppColors.mainColor,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: const BorderSide(
                                    color: AppColors.mainColor)))),
                  ],
                ),
              ),
              LoginSignButtons(text: "Next", onTap: _signUp),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont't have an account"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const Loginpage())));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: AppColors.mainColor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

 void _signUp() async {
  String email = emailController.text;
  String password = passwordcontroller.text;

  if (password.length < 8) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: CommonText(
          text: "Password must be at least 8 Characters long",
        ),
        backgroundColor: AppColors.mainColor,
      ),
    );
    return;
  }

  try {
    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("user is created");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: CommonText(
            text: "Account created successfully!",
          ),
          backgroundColor: AppColors.mainColor,
        ),
      );
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const Introdetails())));
    } else {
      print("error creating user");
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: CommonText(
            text: "Error creating account. Please try again.",
          ),
          backgroundColor: AppColors.mainColor,
        ),
      );
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'email-already-in-use') {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: CommonText(
            text: "The email address is already in use by another account.",
          ),
          backgroundColor: AppColors.mainColor,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: CommonText(
            text: "Error creating account. Please try again.",
          ),
          backgroundColor: AppColors.mainColor,
        ),
      );
    }
  }
}
}
