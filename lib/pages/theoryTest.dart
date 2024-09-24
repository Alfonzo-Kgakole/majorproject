import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/pages/coneTest.dart';
import 'package:projectone/pages/mainpage.dart';
import 'package:projectone/pages/roadTest.dart';
import 'package:projectone/widgets/bigText.dart';
import 'package:projectone/widgets/textStyle.dart';

class TheoryTest extends StatefulWidget {
  const TheoryTest({super.key});

  @override
  State<TheoryTest> createState() => _TheoryTestState();
}

class _TheoryTestState extends State<TheoryTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("THOERY TEST BOOKING")),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MainPageScreen())));
                  },
                  icon: const Icon(Icons.arrow_back)),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonText(text: "Settings"),
                        Icon(Icons.settings)
                      ],
                    ),
                  )
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(child: BigText(text: "Theory test")),
          const SizedBox(height: 20),
          Container(
            height: 160,
            width: 430,
            decoration: BoxDecoration(color: AppColors.mainColor),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back,
                          color: AppColors.whiteTextColor,
                          size: 32,
                        )),
                    Text("12 April 2024",
                        style: TextStyle(
                            color: AppColors.whiteTextColor, fontSize: 24)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: AppColors.whiteTextColor,
                          size: 32,
                        )),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "MON",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "TUE",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "WED",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "THU",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "FRI",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "SAT",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "SUN",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "1",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "2",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "3",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "4",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "5",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "6",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                      Text(
                        "7",
                        style: TextStyle(color: AppColors.whiteTextColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "AVAILABLE SLOTS",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "10:00am",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "10:30am",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "11:00am",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "11:30am",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "12:00pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "12:30pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "13:00pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "13:30pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "14:00pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "14:30pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "15:00pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 90,
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: AppColors.mainColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "15:30pm",
                    style: TextStyle(
                        color: AppColors.whiteTextColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 165,
                height: 52,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.redColor,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const RoadTest())));
                    },
                    child: const Text("CONE TEST", style: TextStyle(
                      fontSize: 20,
                      color: AppColors.whiteTextColor
                    ),)
                    ),
              ),
              Container(
                width: 165,
                height: 52,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: AppColors.redColor,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const ConeTest())));
                    },
                    child: const Text("CONE TEST", style: TextStyle(
                      fontSize: 20,
                      color: AppColors.whiteTextColor
                    ),)
                    ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
