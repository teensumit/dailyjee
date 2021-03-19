import 'package:flutter/material.dart';
import '../theme.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  primary,
                  primaryLight
                ],
                begin: FractionalOffset(0, 0),
                end: FractionalOffset(0, 1),
                stops: [0, 1],
                tileMode: TileMode.clamp
              )
            ),
          ),
          Center(child: Text(
            "DailyJEE",
            style: TextStyle(
                  fontSize: 48,
                  fontFamily: 'Molengo',
                  color: Colors.white,
            ),
          )),
        ]
      )
    );
  }
}