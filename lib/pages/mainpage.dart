import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/components/dimensions.dart';
import 'package:projectone/pages/buyCar.dart';
import 'package:projectone/pages/coneTest.dart';
import 'package:projectone/pages/driverLicense.dart';
import 'package:projectone/pages/lgoinAndSignUpPage.dart';
import 'package:projectone/pages/roadTest.dart';
import 'package:projectone/pages/theoryTest.dart';
import 'package:projectone/widgets/bigText.dart';
import 'package:projectone/widgets/idCartdText.dart';
import 'package:projectone/widgets/idDetailTextContainer.dart';

class MainPageScreen extends StatefulWidget {
  const MainPageScreen({super.key});

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  //getting user data
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String? _userName;
  late Future<void> _userDataFuture;

  @override
  void initState() {
    super.initState();
    _userDataFuture = _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    final userId = user?.uid;

    final docRef = _firestore.collection('userInfo').doc(userId);
    final docSnap = await docRef.get();

    if (docSnap.exists) {
      final userData = docSnap.data();
      setState(() {
        _userName = userData?['firstname'];
      });
    } else {
      print('No user data found');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.whiteTextColor,
          drawer: Drawer(
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LoginSignupPage())));
                  },
                  child: Row(
                    children: [BigText(text: "Log out"), Icon(Icons.logout)],
                  ),
                )
              ],
            ),
          ),
          appBar: AppBar(
            elevation: 0,
            actions: [
              IconButton(
                  onPressed: () {
                    // going to show use
                  },
                  icon: const Icon(Icons.person))
            ],
          ),
          body: FutureBuilder(
            future: _userDataFuture,
            builder: (context, snapshot) {
              return Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width60),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IDcartBigText(
                      text: "Welcome",
                    ),
                    IDcartBigText(
                      text: "Alfonzo",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions.height25,
              ),
              Container(
                  width: Dimensions.idContainerWidth,
                  height: Dimensions.idContainerHeight,
                  margin: EdgeInsets.symmetric(horizontal: Dimensions.radius10),
                  decoration: BoxDecoration(
                      color: AppColors.idColor,
                      borderRadius: BorderRadius.circular(Dimensions.height10)),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.width10,
                        vertical: Dimensions.height5),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(""),
                          Column(
                            children: [
                              Text("REPUBLIC OF",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimensions.font18)),
                              Text("BOTSWANA",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimensions.font18)),
                            ],
                          ),
                          Text("c",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimensions.font40)),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: Dimensions.idImageContainerHeight,
                            width: Dimensions.idImageContainerWidth,
                            decoration: BoxDecoration(
                                color: AppColors.mainColor,
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius5),
                                image: const DecorationImage(
                                    image: AssetImage("assets/images/code.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  const IdDetailTextContainer(
                                    text: 'ID Number',
                                    color: null,
                                  ),
                                  SizedBox(width: Dimensions.width15),
                                  const IdDetailTextContainer(
                                    text: '531022',
                                    color: AppColors.redColor,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  const IdDetailTextContainer(
                                      text: "Surname", color: null),
                                  SizedBox(
                                    width: Dimensions.width20,
                                  ),
                                  const IdDetailTextContainer(
                                      text: "Kgakole", color: null)
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  const IdDetailTextContainer(
                                      text: "Fornames",
                                      color: AppColors.blackColor),
                                  SizedBox(
                                    width: Dimensions.width20,
                                  ),
                                  const IdDetailTextContainer(
                                      text: "Alfonzo",
                                      color: AppColors.blackColor)
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: Dimensions.width10,
                                  ),
                                  const IdDetailTextContainer(
                                      text: "Date of Birth",
                                      color: AppColors.blackColor),
                                  SizedBox(
                                    width: Dimensions.width20,
                                  ),
                                  const IdDetailTextContainer(
                                      text: "12 April 1998",
                                      color: AppColors.blackColor)
                                ],
                              ),
                            ],
                          ),
                        ],
                      )
                    ]),
                  )),
              SizedBox(height: Dimensions.height20),
              Column(
                children: [
                  Text("Create bookings",
                      style: TextStyle(
                          fontSize: Dimensions.font20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: Dimensions.height20,
                  ),
                  Row(
                    children: [
                      Container(
                          width: Dimensions.buttonsContainerWidth * 2.5,
                          height: Dimensions.buttonsContainerHeight,
                          margin: EdgeInsets.symmetric(
                              horizontal: Dimensions.width15),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius10),
                              color: AppColors.mainColor),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "car registration ",
                                style: TextStyle(
                                    color: AppColors.whiteTextColor,
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold),
                              ))),
                      Container(
                          width: Dimensions.buttonsContainerWidth * 2.5,
                          height: Dimensions.buttonsContainerHeight,
                          margin: EdgeInsets.symmetric(
                              horizontal: Dimensions.width15),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius10),
                              color: AppColors.mainColor),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DriverLicense()));
                              },
                              child: Text(
                                "Drivers License ",
                                style: TextStyle(
                                    color: AppColors.whiteTextColor,
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                  SizedBox(height: 50),
                  Row(
                    children: [
                      Container(
                        height: Dimensions.buttonContainerheight,
                        width: Dimensions.buttonContainerwidth,
                        margin: EdgeInsets.symmetric(
                            horizontal: Dimensions.width15),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius10),
                            color: AppColors.mainColor),
                        child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (BuildContext contexy) {
                                    return SizedBox(
                                      height: 450,
                                      width: 500,
                                      child: Column(
                                        children: [
                                          Container(
                                            height: Dimensions
                                                .buttonContainerheight,
                                            margin: EdgeInsets.symmetric(
                                                vertical: Dimensions.height10),
                                            child: TextButton(
                                              onPressed: () {
                                                //navigating to the theory page
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: ((context) =>
                                                            const TheoryTest())));
                                              },
                                              child: const Text(
                                                "Theory Test",
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            height: 66,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: TextButton(
                                              onPressed: () {
                                                //navigating to the theory page
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: ((context) =>
                                                            const ConeTest())));
                                              },
                                              child: const Text(
                                                "Cone Test",
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 20),
                                          Container(
                                            height: 66,
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: TextButton(
                                              onPressed: () {
                                                //navigating to the theory page
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: ((context) =>
                                                            const RoadTest())));
                                              },
                                              child: Text(
                                                "Road Test",
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Center(
                                child: Text(
                              "Booking",
                              style: TextStyle(
                                  color: AppColors.whiteTextColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))),
                      ),
                      Container(
                          width: 170,
                          height: 66,
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.mainColor),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) =>
                                            const BuyCar())));
                              },
                              child: const Text(
                                "Buy Car ",
                                style: TextStyle(
                                    color: AppColors.whiteTextColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  )
                ],
              )
            ]);
            },
            
          )),
    );
  }
}
