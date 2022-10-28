import 'package:canteen_appointment_booking_app/asset-data.dart';
import 'package:flutter/material.dart';
import '../components/circles.dart';

class BACKGROUND extends StatelessWidget {
  const BACKGROUND({
    Key? key,
    required this.TEN,
  }) : super(key: key);

  final double TEN;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      fit: StackFit.expand,
      children: [
        Container(),
        Positioned(
          child: circle(),
          top: TEN,
          left: (TEN * 5),
        ),
        Positioned(
          child: circle(),
          top: -(TEN * 5),
          left: TEN * 15,
        ),
        Positioned(
          child: circle(),
          top: -(TEN * 15),
          left: TEN * 25,
        ),
        Positioned(
          child: Image.asset(line_image),
          bottom: -(TEN * 4),
          right: -(TEN * 7),
        ),
        Positioned(
          child: circle(),
          bottom: -(TEN * 7),
          left: -(TEN * 7),
        )
      ],
    );
  }
}
