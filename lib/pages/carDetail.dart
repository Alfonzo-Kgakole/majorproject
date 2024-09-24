import 'package:flutter/material.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/pages/mainpage.dart';
import 'package:projectone/widgets/bigText.dart';
import 'package:projectone/widgets/buycarText.dart';
import 'package:projectone/widgets/carDetailText.dart';
import 'package:projectone/widgets/carDetailsbox.dart';
import 'package:projectone/widgets/loginSignButtons.dart';

class CarDetail extends StatefulWidget {
  const CarDetail({super.key});

  @override
  State<CarDetail> createState() => _CarDetailState();
}

class _CarDetailState extends State<CarDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: IconButton(
            onPressed: () {
              //going to the home page
              Navigator.push(context, 
              MaterialPageRoute(builder: ((context) => const MainPageScreen())
              ));
            }, icon: const Icon(Icons.home, color: AppColors.mainColor,),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(Icons.arrow_back, color: AppColors.mainColor,),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          //car image 
          Container(
            width: 430,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/car1.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),
          const SizedBox(height: 20),

          //car name and price
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CarDetailText(text: 'BMW i5 M60',),
                CarDetailText(text: "\$66,800",),
              ],
            ),
          ),

          //location and payment 
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    BuyCarTextSmall(text: 'Location: ', textColor: AppColors.grayTextColor,),
                    SizedBox(width: 5,),
                    BuyCarTextSmall(text: 'Gaborone', textColor: AppColors.grayTextColor,),
                  ],
                ),
                BuyCarTextSmall(text: '\$1050/month', textColor: AppColors.grayTextColor,),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                carDetailBox(firstText: 'Petro', secondText: 'Fuel Type', icon: Icons.gas_meter),
                carDetailBox(firstText: '1230', secondText: 'Miles', icon: Icons.travel_explore),
                carDetailBox(firstText: '2024', secondText: 'year', icon: Icons.timelapse),
              ],
            ),
          ),
          const SizedBox(height: 20),

          //car detail
          const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                BigText(text: "Details"),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuyCarTextSmall(text: "Interior Color:", textColor: AppColors.grayTextColor,),
                    BuyCarTextSmall(text: "Blue:", ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuyCarTextSmall(text: "Exterior Color:", textColor: AppColors.grayTextColor,),
                    BuyCarTextSmall(text: "black:", ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BuyCarTextSmall(text: "DriverTrain:", textColor: AppColors.grayTextColor,),
                    BuyCarTextSmall(text: "FWD:", ),
                  ],
                ),
                SizedBox(height: 10),
              ],
            ),
          ),

          const Spacer(),
          LoginSignButtons(text: 'Buy Car', onTap: () {  },),
          SizedBox(height: 30,),


        ],
      ),
    );
  }
}
