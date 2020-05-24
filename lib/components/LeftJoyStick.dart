import 'package:flutter/material.dart';
import 'package:nintendo_switch/components/CircularButton.dart';
import 'package:nintendo_switch/components/FourButtons.dart';

class LeftJoyStick extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _radius = 50.0;
    return Container(
      height: _size.height * 0.4,
      width: _size.width * 0.1,
      decoration: BoxDecoration(
        color: Color(0xff00c3e3),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_radius),
          bottomLeft: Radius.circular(_radius),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 10.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                '-',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Colors.grey[800]
                ),
              ),
            ),
          ),
          CircularButton(),
          SizedBox(
            height: _size.height * 0.03,
          ),
          FourButtons(),
          SizedBox(
            height: _size.height * 0.02,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 10.0),
              padding: const EdgeInsets.all(3.0),
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
