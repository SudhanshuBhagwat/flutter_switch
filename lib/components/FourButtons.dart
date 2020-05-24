import 'package:flutter/material.dart';
import 'dart:math' as math;

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
                  Align(
                    alignment: Alignment.topRight,
                    child: ClipOval(
                      child: Container(
                        height: constraints.maxWidth * 0.23,
                        width: constraints.maxWidth * 0.23,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: ClipOval(
                      child: Container(
                        height: constraints.maxWidth * 0.23,
                        width: constraints.maxWidth * 0.23,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ClipOval(
                      child: Container(
                        height: constraints.maxWidth * 0.23,
                        width: constraints.maxWidth * 0.23,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: ClipOval(
                      child: Container(
                        height: constraints.maxWidth * 0.23,
                        width: constraints.maxWidth * 0.23,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
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
    );
  }
}
