import 'package:canteen_appointment_booking_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import './screens/login_page.dart';
import './screens/registration_page.dart';
import './screens/otp_page.dart';
import './screens/history.dart';
import './screens/profile_page.dart';
import './screens/booking_screen.dart';
import './screens/show_receipt.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(CanteenApp());
}

class CanteenApp extends StatelessWidget {
  const CanteenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        OTPScreen.id: (context) => OTPScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        HistoryPage.id: (context) => HistoryPage(),
        ProfilePage.id: (context) => ProfilePage(),
        BookingPage.id: (context) => BookingPage(),
        ReceiptPage.id: (context) => ReceiptPage(),
      },
    );
  }
}
