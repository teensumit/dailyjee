import 'package:flutter/material.dart';
import 'package:dailyjee/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class GradeSubjectTemplate extends StatelessWidget {
  const GradeSubjectTemplate({
    Key key,
    @required this.color,
    @required this.icon,
    @required this.headline,
    @required this.description,
    @required this.percent,
  }) : super(key: key);

  final Color color;
  final IconData icon;
  final String headline;
  final String description;
  final int percent;

  @override
  Widget build(BuildContext context) {
    double level = percent/100; 

    return Card(
      margin: EdgeInsets.only(top:16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(horizontal:16, vertical:14),
        child:Row(
          children: [
            Container(
              height: 51,
              width: 51,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(4),
              ),
             
              child: Stack(
                    children: [Center(
                      child: Image(
                        image: AssetImage('assets/polygon.png',),
                        height: 40,
                        width: 40,
                      )
                    ),
                      Center(child: Icon(
                        icon,
                        size: 20,
                        color: color,
                        ))
                    ]
              ),
            ),
            SizedBox(width: 24,),
            Expanded(
                          child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                  "$headline",
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'RobotoBold',
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8,),
                Text(
                  "$description",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: textLight
                  ),
                ),
                SizedBox(height: 8,),
                
              ],),
            ),
            SizedBox(width: 24,),

            new CircularPercentIndicator(
              radius: 61.0,
              lineWidth: 5.0,
              percent: level,
              center: Text(
                  "$percent%",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'RobotoBold',
                    color: Colors.black,
                  ),
                ),
              progressColor: primary,
              circularStrokeCap: CircularStrokeCap.round,
            )

          ],
        )
      ),
    );
  }
}