import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/pages/carDetail.dart';
import 'package:projectone/widgets/buycarText.dart';

class buycarCard extends StatefulWidget {
  const buycarCard({super.key});

  @override
  State<buycarCard> createState() => _buycarCardState();
}

class _buycarCardState extends State<buycarCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
          height: 330,
          width: 380,
          decoration: BoxDecoration(
              color: AppColors.whiteTextColor,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: AppColors.blackColor,
                    spreadRadius: 2,
                    offset: Offset(10, 5),
                    blurRadius: 20)
              ]),
          child: Column(
            children: [
              Container(
                width: 385,
                height: 184,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    image: DecorationImage(
                        image: AssetImage("assets/images/car1.jpg"),
                        fit: BoxFit.cover)),
              ),
              const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuyCarTextSmall(text: "BMW i5 M60"),
                    BuyCarTextSmall(text: "\$66,800"),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.car_crash, color: AppColors.grayTextColor),
                        SizedBox(width: 10),
                        BuyCarTextSmall(text: "2024", textColor: AppColors.grayTextColor,),
                      ],
                    ),
                    BuyCarTextSmall(text: "120 miles", textColor: AppColors.grayTextColor),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  //goes to the car CarDetail screen
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => const CarDetail())));
                },
                child: Container(
                  width: 330,
                  height: 33,
                  decoration: BoxDecoration(
                    color: AppColors.mainColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: BuyCarTextSmall(
                      text: "More Details",
                      textColor: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
