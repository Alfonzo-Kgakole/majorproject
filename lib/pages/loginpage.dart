import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/database/firebase_auth.dart';
import 'package:projectone/pages/Signpage.dart';
import 'package:projectone/pages/mainpage.dart';
import 'package:projectone/widgets/loginSignButtons.dart';
import 'package:projectone/widgets/textStyle.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final FirebaseAuthServer _auth = FirebaseAuthServer();
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
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteTextColor,
          body:  SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Center(child: Image.asset("assets/images/transportLogo.jpeg")),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CommonText(
                        text: "Login",
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      const CommonText(text: "Please sign in to continue"),
                      const SizedBox(height: 20),
                      TextField(
                        controller: emailController,
                          decoration: InputDecoration(
                              hintText: "Email",
                              prefixIcon: const Icon(
                                Icons.mail,
                                color: AppColors.mainColor,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide:
                                      BorderSide(color: AppColors.mainColor)))),
                      const SizedBox(height: 10),
                      TextField(
                        controller: passwordcontroller,
                          decoration: InputDecoration(
                              hintText: "password",
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
                                  borderSide:
                                      BorderSide(color: AppColors.mainColor)))),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                          child: Column(
                        children: [
                          LoginSignButtons(
                            text: 'Login',
                            onTap: _signIn,
                          ),
                          TextButton(
                              onPressed: () {}, child: Text("Forgot Password")),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account"),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                SignInPage())));
                                  },
                                  child: const Text(
                                    "Sign In",
                                    style: TextStyle(color: AppColors.mainColor),
                                  ))
                            ],
                          )
                        ],
                      )),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }

  void _signIn() async {
    String email = emailController.text;
    String password = passwordcontroller.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user != null) {
      print("user is signed in");
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => MainPageScreen())));
    } else {
      print("error loging user");
    }
  }
}
