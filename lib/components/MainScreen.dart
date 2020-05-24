import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      height: _size.height * 0.4,
      width: _size.width * 0.6,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[600],
          width: 10.0,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[600],
          border: Border.symmetric(
            horizontal: BorderSide(
              width: 25.0,
              color: Colors.black,
            ),
            vertical: BorderSide(
              width: 15.0,
              color: Colors.black,
            ),
          ),
        ),
        child: Image.asset(
          'pokemon.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
