import 'package:flutter/material.dart';

class BookingPage extends StatefulWidget {
  static const String id = 'booking_screen';
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Booking Screen"),
    );
  }
}
