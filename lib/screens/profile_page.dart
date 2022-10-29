import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:canteen_appointment_booking_app/components/background.dart';
import 'package:canteen_appointment_booking_app/screens/history.dart';
import 'package:canteen_appointment_booking_app/screens/home_page.dart';
import 'package:canteen_appointment_booking_app/screens/show_receipt.dart';
import 'package:canteen_appointment_booking_app/theme-data.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static const String id = 'profile_page';
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                        padding: EdgeInsets.only(
                            top: TEN * 8.6, left: TEN * 2, right: TEN * 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, ProfilePage.id);
                              },
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size(TEN * 12, TEN * 12),
                                shape: const CircleBorder(),
                              ),
                              child: Text(
                                'ProfilePic',
                                style: TextStyle(fontSize: TEN * 1.8),
                              ),
                            ),
                            Container(
                              child: Text(
                                "User Name",
                                style: TextStyle(
                                  fontSize: TEN * 3.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(TEN * 2),
                        child: BlurryContainer(
                          blur: 10,
                          color: CIRCLES,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          child: Container(
                            child: ListView(
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              padding: EdgeInsets.symmetric(
                                  vertical: TEN * 2, horizontal: TEN * 2),
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: TEN, vertical: TEN * 2),
                                        child: Text('Rank',
                                            style: TextStyle(
                                                fontSize: TEN * 1.8,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        child: Text('Officer',
                                            style: TextStyle(
                                                fontSize: TEN * 1.8,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: TEN, vertical: TEN * 2),
                                        child: Text('Mobile no.',
                                            style: TextStyle(
                                                fontSize: TEN * 1.8,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        child: Text('8900000000',
                                            style: TextStyle(
                                                fontSize: TEN * 1.8,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: TEN, vertical: TEN * 2),
                                        child: Text('Card no',
                                            style: TextStyle(
                                                fontSize: TEN * 1.8,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                      Container(
                                        child: Text('323314204932',
                                            style: TextStyle(
                                                fontSize: TEN * 1.8,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: TEN * 2),
                                    child: SizedBox(
                                      width: TEN * 22,
                                      height: TEN * 5,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, HomeScreen.id);
                                        },
                                        child: Text(
                                          "Edit",
                                          style: TextStyle(fontSize: TEN * 1.8),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
