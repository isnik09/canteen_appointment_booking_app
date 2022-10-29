import 'package:blurrycontainer/blurrycontainer.dart';

import 'package:canteen_appointment_booking_app/screens/home_page.dart';
import 'package:canteen_appointment_booking_app/screens/otp_page.dart';
import 'package:canteen_appointment_booking_app/theme-data.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:cool_dropdown/cool_dropdown.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    List dropdownItemList = [
      {'label': '  Airmen', 'value': 'airmen'}, // label is required and unique
      {'label': '  Officer', 'value': 'officer'},
    ];
    String? value;
    int? selectedValue = 1;
    double SCREENWIDTH = MediaQuery.of(context).size.width;
    double SCREENHEIGHT = MediaQuery.of(context).size.height;
    double FIVE = SCREENHEIGHT * 0.005616179;
    double TEN = SCREENHEIGHT * 0.011232358;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: [
              Hero(
                tag: 'logo',
                child: Container(
                  height: SCREENHEIGHT / 2.8,
                  decoration: BoxDecoration(
                    color: CIRCLES_NT,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(TEN * 4),
                      bottomLeft: Radius.circular(TEN * 4),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: (TEN * 2),
                  left: (TEN * 1.5),
                ),
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  foregroundColor: Colors.black,
                  backgroundColor: ACCENTCOLOUR,
                  child: const Icon(Icons.arrow_back_ios_new),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                        left: TEN * 3.6,
                        top: SCREENHEIGHT / 2.6,
                        right: TEN * 3.6),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: TEN * 2),
                          child: RichText(
                            text: TextSpan(
                              text: "Create?\n",
                              style: TextStyle(
                                  color: const Color.fromARGB(200, 0, 0, 0),
                                  fontSize: TEN * 4,
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'new account',
                                  style: TextStyle(fontSize: TEN * 3.2),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: TEN),
                            decoration: BoxDecoration(
                              color: CIRCLES_NT,
                              borderRadius: BorderRadius.all(
                                Radius.circular(TEN * 1.5),
                              ),
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: const Icon(
                                  CupertinoIcons.person_crop_square_fill,
                                  color: Color.fromARGB(200, 0, 0, 0),
                                ),
                                hintText: 'Name',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: TEN, horizontal: TEN * 2),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: TEN),
                            decoration: BoxDecoration(
                              color: CIRCLES_NT,
                              borderRadius: BorderRadius.all(
                                Radius.circular(TEN * 1.5),
                              ),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: const Icon(
                                  CupertinoIcons.phone_circle_fill,
                                  color: Color.fromARGB(200, 0, 0, 0),
                                ),
                                hintText: 'Mobile number',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: TEN, horizontal: TEN * 2),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: TEN),
                            decoration: BoxDecoration(
                              color: CIRCLES_NT,
                              borderRadius: BorderRadius.all(
                                Radius.circular(TEN * 1.5),
                              ),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                suffixIcon: const Icon(
                                  CupertinoIcons.creditcard,
                                  color: Color.fromARGB(200, 0, 0, 0),
                                ),
                                hintText: 'Canteen card number',
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: TEN, horizontal: TEN * 2),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: TEN),
                            child: CoolDropdown(
                              resultWidth: SCREENWIDTH,
                              dropdownWidth: TEN * 30,
                              dropdownList: dropdownItemList,
                              placeholder: '  Select rank',
                              resultTS: TextStyle(
                                fontSize: TEN * 1.8,
                                color: Colors.black,
                              ),
                              placeholderTS: TextStyle(
                                  color: Colors.black.withOpacity(0.5),
                                  fontSize: TEN * 1.8),
                              dropdownHeight: TEN * 14,
                              onChange: (_) {},
                              defaultValue: null,
                              resultBD: BoxDecoration(
                                color: CIRCLES_NT,
                                borderRadius: BorderRadius.circular(TEN * 1.5),
                                boxShadow: const [
                                  BoxShadow(color: Colors.transparent),
                                ],
                              ),
                              selectedItemBD: BoxDecoration(
                                color: CIRCLES,
                                borderRadius: BorderRadius.circular(TEN * 1.5),
                              ),
                              dropdownBD: BoxDecoration(
                                borderRadius: BorderRadius.circular(TEN * 1.5),
                                color: BG,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.3),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: TEN * 2),
                            child: Center(
                              child: SizedBox(
                                width: TEN * 22,
                                height: TEN * 5,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, OTPScreen.id);
                                  },
                                  child: Text(
                                    "Proceed",
                                    style: TextStyle(fontSize: TEN * 1.8),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
