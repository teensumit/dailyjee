import 'package:dailyjee/screen/components/card_score_template.dart';
import 'package:dailyjee/screen/components/grade_subject_template.dart';
import 'package:dailyjee/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    String headline = "Chemistry";
    String description = "Problems for Chemistry";
    Color color = primary;
    double level = 80;
    IconData icon = Icons.add;

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        toolbarHeight: 50,
        title:Center(
          child: Text(
            "Grades",
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'RobotoBold',
            ),
          ),
        )
      ),
      bottomNavigationBar: SizedBox(
        height: 48,
        child: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: unselectedColor,
          selectedItemColor: primary,
          selectedLabelStyle: TextStyle(
                fontSize: 8,
                fontFamily: 'Roboto',
                color: primary
          ),
          unselectedLabelStyle: TextStyle(
                fontSize: 8,
                fontFamily: 'Roboto',
                color: unselectedColor
          ),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_available_rounded),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.military_tech_rounded),
              label: 'LeaderBoard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.face_rounded),
              label: 'Profile',
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal:16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            SizedBox(height:8),
            Center(
              child: SvgPicture.asset(
                "assets/avtaar.svg",
                height:62,
                width:62,
              ),
            ),
            SizedBox(height:8),

            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal:16, vertical:3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color:border, width:1)
                ),
                child: Text(
                  "Avani Singh",
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Roboto',
                    color: primary
                  ),
                ),
              ),
            ),
            SizedBox(height:16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                CardScoreTemplate(score: "85", icon: Icons.schedule_rounded, label: "HOURS"),
                SizedBox(width:16),
                CardScoreTemplate(score: "2.4", icon: Icons.star_border_rounded, label: "GPA"),
                SizedBox(width:16),
                CardScoreTemplate(score: "3", icon: Icons.book_outlined, label: "SUBJECTS")
              ]
            ),

            SizedBox(height:24),

            Container(
                child: Text(
                "Grades of subjects",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'RobotoBold',
                  color: Colors.black,
                ),
              ),
            ),

            GradeSubjectTemplate(
              color: Colors.blue,
              icon: Icons.cloud,
              headline: "Chemistry", 
              description: "Problems for Chemistry", 
              percent: 80
            ),

            GradeSubjectTemplate(
              color: Colors.green,
              icon: Icons.calculate,
              headline: "Mathematics", 
              description: "Problems for Mathematics", 
              percent: 60
            ),

            GradeSubjectTemplate(
              color: Colors.red,
              icon: Icons.train_outlined, 
              headline: "Physics", 
              description: "Problems for Physics", 
              percent: 0
            ),
            

          ]
        ),
      ),
    );
  }
}