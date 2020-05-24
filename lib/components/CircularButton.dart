import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          border: Border.all(
            width: 4.0,
            color: Colors.grey[600],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.8),
              blurRadius: 20.0,
              spreadRadius: 2.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Container(
          height: constraints.maxWidth * 0.4,
          width: constraints.maxWidth * 0.4,
          decoration: BoxDecoration(
            color: Colors.grey[800],
            borderRadius: BorderRadius.circular(100.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.8),
                blurRadius: 10.0,
                spreadRadius: -2.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
