import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:canteen_appointment_booking_app/asset-data.dart';
import 'package:canteen_appointment_booking_app/components/background.dart';
import 'package:canteen_appointment_booking_app/screens/error_page.dart';
import 'package:canteen_appointment_booking_app/screens/home_page.dart';
import 'package:canteen_appointment_booking_app/theme-data.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  static const String id = 'opt_screen';
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    double SCREENWIDTH = MediaQuery.of(context).size.width;
    double SCREENHEIGHT = MediaQuery.of(context).size.height;
    double FIVE = SCREENHEIGHT * 0.005616179;
    double TEN = SCREENHEIGHT * 0.011232358;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BACKGROUND(TEN: TEN),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
                    children: [
                      Image.asset(captcha_image),
                      Center(
                        child: Container(
                          child: Text(
                            "Verify your\nnumber",
                            style: TextStyle(
                                fontSize: TEN * 4, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: TEN, horizontal: TEN * 3.6),
                    child: Text(
                      "OTP sent to 89*****187",
                      style: TextStyle(
                        fontSize: TEN * 1.8,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(
                          vertical: TEN, horizontal: TEN * 3.6),
                      decoration: BoxDecoration(
                        color: CIRCLES_NT,
                        borderRadius: BorderRadius.all(
                          Radius.circular(TEN * 1.5),
                        ),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'OTP',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: TEN, horizontal: TEN * 2),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: TEN * 2),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, ErrorPage.id);
                            },
                            child: RichText(
                              text: TextSpan(
                                text: "didn't received OTP?\n",
                                style: TextStyle(
                                    color: const Color.fromARGB(180, 0, 0, 0),
                                    fontSize: TEN * 1.6,
                                    fontWeight: FontWeight.bold),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: ' retry',
                                    style: TextStyle(
                                      color: ACCENTCOLOUR,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: TEN * 2),
                      child: SizedBox(
                        width: TEN * 22,
                        height: TEN * 5,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, HomeScreen.id);
                          },
                          child: Text(
                            "Proceed",
                            style: TextStyle(fontSize: TEN * 1.8),
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
      ),
    );
  }
}
