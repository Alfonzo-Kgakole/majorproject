import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectone/pages/mainpage.dart';
import 'package:projectone/pages/settings.dart';
import 'package:projectone/widgets/bigText.dart';
import 'package:projectone/widgets/buycarCard.dart';

class BuyCar extends StatefulWidget {
  const BuyCar({super.key});

  @override
  State<BuyCar> createState() => _BuyCarState();
}

class _BuyCarState extends State<BuyCar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // going to the home page
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const MainPageScreen()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BigText(text: "Home"),
                          Icon(Icons.home, size: 30,)
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    //settings
                    GestureDetector(
                      onTap: () {
                        // going to the home page
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Setttings()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BigText(text: "Settings"),
                          Icon(Icons.settings, size: 30,)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.person)),
          IconButton(onPressed: (){}, icon: Icon(Icons.drive_eta)),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(width: 0.8),
                ),
                hintText: "Search for Car",
                prefixIcon: const Icon(Icons.search),
                
              ),
            ),
          ),
          const SizedBox(height: 40,),
          const buycarCard(),
          const SizedBox(height: 40),
          const buycarCard(),
          const SizedBox(height: 40),
          const buycarCard(),
          const SizedBox(height: 40),
          const buycarCard(),
          const SizedBox(height: 40),
          const buycarCard(),
          const SizedBox(height: 40),
        ]
      )
    );
  }
}