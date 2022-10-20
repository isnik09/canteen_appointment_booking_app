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
    return Center(
      child: Text("OTP Screen"),
    );
  }
}
