import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:nintendo_switch/components/SamllButton.dart';

class FourButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Stack(
        children: [
          Transform.rotate(
            angle: math.pi / 4,
            child: Container(
              height: constraints.maxWidth * 0.8,
              width: constraints.maxWidth * 0.8,
              padding: const EdgeInsets.all(10.0),
              child: Stack(
                children: [
                  SmallButton(
                    size: constraints.maxWidth * 0.23,
                    alignment: Alignment.topRight,
                  ),
                  SmallButton(
                    size: constraints.maxWidth * 0.23,
                    alignment: Alignment.topLeft,
                  ),
                  SmallButton(
                    size: constraints.maxWidth * 0.23,
                    alignment: Alignment.bottomRight,
                  ),
                  SmallButton(
                    size: constraints.maxWidth * 0.23,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
