import 'package:flutter/material.dart';
import 'package:nintendo_switch/components/CircularButton.dart';
import 'package:nintendo_switch/components/FourButtons.dart';

class RightJoyStick extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _radius = 50.0;
    return Container(
      height: _size.height * 0.4,
      width: _size.width * 0.1,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(_radius),
          bottomRight: Radius.circular(_radius),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 10.0, top: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '+',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40.0,
                    color: Colors.grey[800]),
              ),
            ),
          ),
          FourButtons(),
          SizedBox(
            height: _size.height * 0.02,
          ),
          CircularButton(),
          SizedBox(
            height: _size.height * 0.03,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 10.0),
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                border: Border.all(color: Colors.grey[600], width: 2.0),
              ),
              child: Icon(
                Icons.home,
                size: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
