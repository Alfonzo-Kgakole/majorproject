import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:projectone/components/AppColors.dart';
import 'package:projectone/components/dimensions.dart';
import 'package:projectone/pages/mainpage.dart';
import 'package:projectone/widgets/bigText.dart';
import 'package:projectone/widgets/loginSignButtons.dart';

class Introdetails extends StatefulWidget {
  const Introdetails({super.key});

  @override
  State<Introdetails> createState() => _IntrodetailsState();
}

enum Gender {male, female}

class _IntrodetailsState extends State<Introdetails> {
  TextEditingController idController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  DateTime? _dateOfBirth;
  Gender? _gender;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.height15),
            child: Column(
              children: [
                const BigText(text: "User Info"),
                SizedBox(height: Dimensions.height20),
                //name textfield
              TextField(
  controller: idController,
  decoration: InputDecoration(
    hintText: "ID Number",
    prefixIcon: const Icon(
      Icons.info_rounded,
      color: AppColors.mainColor,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: const BorderSide(color: AppColors.mainColor),
    ),
  ),
  keyboardType: TextInputType.number,
  inputFormatters: [
    FilteringTextInputFormatter.digitsOnly,
  ],
),
                SizedBox(height: Dimensions.height20),
                TextField(
                    controller: firstnameController,
                    decoration: InputDecoration(
                        hintText: "First Name",
                        prefixIcon: const Icon(
                          Icons.person,
                          color: AppColors.mainColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(Dimensions.height20),
                            borderSide:
                                const BorderSide(color: AppColors.mainColor)))),
                SizedBox(height: Dimensions.height20),
                TextField(
                    controller: lastnameController,
                    decoration: InputDecoration(
                        hintText: "Last Name",
                        prefixIcon: const Icon(
                          Icons.person,
                          color: AppColors.mainColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                const BorderSide(color: AppColors.mainColor)))),
                SizedBox(height: Dimensions.height20),

             
                //date of brith
                GestureDetector(
                  onTap: () {
                    _showDatePicker(context);
                  },
                  child: AbsorbPointer(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: _dateOfBirth == null
                          ? "Date of birth"
                          :  DateFormat.yMMMd().format(_dateOfBirth!),
                        prefix: const Icon(
                          Icons.calendar_month,
                          color: AppColors.mainColor,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(Dimensions.radius20),
                          borderSide: const BorderSide(
                            color: AppColors.mainColor
                          )
                        )
                      ),
                    ),
                  ),
                ),

                   //gender 
                  Row(
    children: [
      Radio(
        value: Gender.male,
        groupValue: _gender,
        onChanged: (value) {
          setState(() {
            _gender = value as Gender;
          });
        },
      ),
      Text('Male'),
      Radio(
        value: Gender.female,
        groupValue: _gender,
        onChanged: (value) {
          setState(() {
            _gender = value as Gender;
          });
        },
      ),
      Text('Female'),
    ],
  ),
                const SizedBox(height: 20),
                LoginSignButtons(
                  text: "Next",
                  onTap: () async {
                    //creating user info
                    _createUserInfo(context);

                    //navigating to the next mainpage
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MainPageScreen())));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));
    if (picked != null) {
      setState(() {
        _dateOfBirth = picked;
      });
    }
  }


  void _createUserInfo(BuildContext context) async {
  if (idController.text.isEmpty ||
      firstnameController.text.isEmpty ||
      lastnameController.text.isEmpty ||
      _gender == null ||
      _dateOfBirth == null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Please fill in all the fields")),
    );
  } else {
    final userCollection = FirebaseFirestore.instance.collection("userInfo");
    DocumentReference docRef = await userCollection.add({
      'id': int.parse(idController.text), // parse the ID number to an integer
      'firstname': firstnameController.text,
      'lastname': lastnameController.text,
      'gender': _gender == Gender.male ? 'Male' : 'Female',
      'dateOfBirth': _dateOfBirth, 
    });
    String id = docRef.id;
    print("user add with id: $id");
  }
}
}
