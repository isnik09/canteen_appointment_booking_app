import 'dart:ui';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:canteen_appointment_booking_app/screens/home_page.dart';
import 'package:canteen_appointment_booking_app/screens/registration_page.dart';
import 'package:canteen_appointment_booking_app/theme-data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login_screen";
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  final bool _isObscure = true;
  Widget build(BuildContext context) {
    // constants
    double SCREENWIDTH = MediaQuery.of(context).size.width;
    double SCREENHEIGHT = MediaQuery.of(context).size.height;
    double FIVE = SCREENHEIGHT * 0.005616179;
    double TEN = SCREENHEIGHT * 0.011232358;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Container(
                padding: EdgeInsets.only(left: TEN * 3.6, top: TEN * 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: TEN * 4,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: TEN * 30,
                      child: Text(
                        "Welcome to canteen app. Put your Login credentials below to start using the app.",
                        style: TextStyle(
                          fontSize: TEN * 1.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: TEN * 3.6, vertical: TEN * 2),
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
                            hintText: 'Enter phone number',
                            contentPadding: EdgeInsets.all(TEN * 1.6),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: TEN * 3.6),
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
                              CupertinoIcons.lock_circle_fill,
                              color: Color.fromARGB(200, 0, 0, 0),
                            ),
                            hintText: 'OTP',
                            contentPadding: EdgeInsets.all(TEN * 1.6),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: TEN * 2),
                      child: Column(
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, RegistrationScreen.id);
                            },
                            child: RichText(
                              text: TextSpan(
                                text: "Don't have an account?\n",
                                style: TextStyle(
                                    color: const Color.fromARGB(180, 0, 0, 0),
                                    fontSize: TEN * 1.6,
                                    fontWeight: FontWeight.bold),
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: ' Register now!',
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
                    Padding(
                      padding: EdgeInsets.only(top: TEN * 2),
                      child: SizedBox(
                        height: TEN * 4.5,
                        width: TEN * 22,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





/*
 Stack(
            children: <Widget>[
              BACKGROUND(TEN: TEN),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "LOGO",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 40),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Container(
                    width: 200,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter phone number',
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Container(
                    width: 200,
                    child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(
                              () {
                                _isObscure = !_isObscure;
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, "/time-select");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: (14),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, "/time-select");
                    },
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: (14),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
*/