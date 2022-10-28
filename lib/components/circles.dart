import 'package:flutter/material.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import '../theme-data.dart';

class circle extends StatelessWidget {
  const circle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlurryContainer(
      child: Container(),
      blur: 3,
      width: 200,
      height: 200,
      elevation: 0,
      color: CIRCLES,
      borderRadius: const BorderRadius.all(Radius.circular(180)),
    );
  }
}
