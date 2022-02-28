import 'package:examen/widgets/curve_clipper.dart';
import 'package:flutter/material.dart';

class BackgroundGradient extends StatelessWidget {
  const BackgroundGradient({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.red],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
      ),
    );
  }
}