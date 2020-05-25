import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  final size;
  final alignment;

  SmallButton({this.size, this.alignment});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: ClipOval(
        child: Container(
          height: size,
          width: size,
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
    );
  }
}
