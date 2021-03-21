import 'package:dailyjee/theme.dart';
import 'package:flutter/material.dart';

class CardScoreTemplate extends StatelessWidget {
  const CardScoreTemplate({
    Key key,
    @required this.score,
    @required this.icon,
    @required this.label,
  }) : super(key: key);

  final String score;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child:Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            children: [
              Text(
                "$score",
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'RobotoBold',
                  color: Colors.black,
                ),
              ),
              SizedBox(width:19),
              Icon(
                icon,
                color: primary,
                size: 11,
              )
            ],
          ),
          SizedBox(height:4),
          Text(
            "$label",
            style: TextStyle(
              fontSize: 6,
              fontFamily: 'RobotoBold',
              color: Colors.black,
            ),
          ),
        ],),
      )
    );
  }
}