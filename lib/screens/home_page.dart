import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:canteen_appointment_booking_app/asset-data.dart';
import 'package:canteen_appointment_booking_app/theme-data.dart';
import 'package:flutter/material.dart';
import '../components/background.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double SCREENWIDTH = MediaQuery.of(context).size.width;
    double SCREENHEIGHT = MediaQuery.of(context).size.height;

    double FIVE = SCREENHEIGHT * 0.005616179;
    double TEN = SCREENHEIGHT * 0.011232358;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: <Widget>[
              BACKGROUND(TEN: TEN),
              Container(
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: (TEN * 5)),
                        child: Image.asset(cart_image),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: TEN * 2),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/book-a-slot');
                          },
                          child: const Text('Book appointment'),
                        ),
                      ),
                      BlurryContainer(
                        blur: 10,
                        color: CIRCLES,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: SizedBox(
                          width: SCREENHEIGHT * 0.4,
                          child: ListView(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.symmetric(
                                vertical: TEN * 2, horizontal: TEN * 2),
                            children: [
                              Text("Recent receipts",
                                  style: TextStyle(
                                      fontSize: TEN * 2,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: (TEN + 5), horizontal: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: SCREENWIDTH * 0.45,
                                      child: Text(
                                          'Your slot has been booked for 23rd Oct 2022 12:00-12:30',
                                          style: TextStyle(
                                              fontSize: SCREENWIDTH * 0.036,
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/show-receipt');
                                      },
                                      child: Text(
                                        'VIEW RECEIPT',
                                        style: TextStyle(
                                          fontSize: (TEN + 4),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: TEN, horizontal: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: SCREENWIDTH * 0.45,
                                      child: Text(
                                          'Your slot has been booked for 16th June 2022 11:00-11:30 ',
                                          style: TextStyle(
                                              fontSize: (TEN + 4),
                                              fontWeight: FontWeight.w500)),
                                    ),
                                    Text(
                                      'EXPIRED',
                                      style: TextStyle(
                                          fontSize: (TEN + 4),
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: TEN, horizontal: 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: SCREENWIDTH * 0.45,
                                      child: Text(
                                        'Your slot has been booked for 20th Oct 2022, 16:15-16:45',
                                        style: TextStyle(
                                            fontSize: (TEN + 4),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Text(
                                      'EXPIRED',
                                      style: TextStyle(fontSize: (TEN + 4)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: TEN, horizontal: 0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, '/show-receipt');
                                      },
                                      child: Text(
                                        'VIEW ALL',
                                        style: TextStyle(
                                          fontSize: (TEN + 4),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
