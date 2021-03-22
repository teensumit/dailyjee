import 'dart:math';

import 'package:dailyjee/screen/components/card_score_template.dart';
import 'package:dailyjee/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/classes/event_list.dart';

class Calender extends StatefulWidget {
  @override
  _CalenderState createState() => _CalenderState();
}

List<DateTime> presentDates = [
  DateTime(2021, 03, 1),
  DateTime(2021, 03, 3),
  DateTime(2021, 03, 4),
  DateTime(2021, 03, 5),
  DateTime(2021, 03, 6),
  DateTime(2021, 03, 9),
  DateTime(2021, 03, 10),
  DateTime(2021, 03, 11),
  DateTime(2021, 03, 15),
  DateTime(2021, 03, 19),

];
List<DateTime> absentDates = [
  DateTime(2021, 3, 2),
  DateTime(2021, 3, 7),
  DateTime(2021, 3, 8),
  DateTime(2021, 3, 12),
  DateTime(2021, 3, 13),
  DateTime(2021, 3, 14),
  DateTime(2021, 3, 16),
  DateTime(2021, 3, 17),
  DateTime(2021, 3, 18),
  DateTime(2021, 3, 19),
  DateTime(2021, 3, 20),
];

class _CalenderState extends State<Calender> {

  static Widget _presentIcon(String day) => SvgPicture.asset(
    'assets/present.svg',
    width: 24,
    height: 24,
  );
  static Widget _absentIcon(String day) => SvgPicture.asset(
    'assets/absent.svg',
    width: 24,
    height: 24,
  );

  EventList<Event> _markedDateMap = new EventList<Event>(
    events: {},
  );

  CalendarCarousel _calendarCarouselNoHeader;

  var len = min(absentDates?.length, presentDates.length);
  double cHeight;


  @override
  Widget build(BuildContext context) {

    cHeight = MediaQuery.of(context).size.height;
    for (int i = 0; i < len; i++) {
      _markedDateMap.add(
        presentDates[i],
        new Event(
          date: presentDates[i],
          title: 'Event 5',
          icon: _presentIcon(
            presentDates[i].day.toString(),
          ),
        ),
      );
    }

    for (int i = 0; i < len; i++) {
      _markedDateMap.add(
        absentDates[i],
        new Event(
          date: absentDates[i],
          title: 'Event 5',
          icon: _absentIcon(
            absentDates[i].day.toString(),
          ),
        ),
      );
    }

    _calendarCarouselNoHeader = CalendarCarousel<Event>(
      height: cHeight*0.54,
      headerTextStyle: TextStyle(
        color: Color(0xFF555555),
        fontSize: 14,
        fontFamily: 'RobotoBold',
      ),
      weekdayTextStyle: TextStyle(
        color: Color(0xFF8C8C8C),
        fontSize: 12,
        fontFamily: 'Roboto',
      ),
      weekendTextStyle: TextStyle(
        color: primary,
        fontSize: 12,
        fontFamily: 'Roboto',
      ),
      daysTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontFamily: 'Roboto',
      ),
      todayButtonColor: primary,
      markedDatesMap: _markedDateMap,
      markedDateShowIcon: true,
      markedDateIconMaxShown: 1,
      markedDateMoreShowTotal:
          null, // null for not showing hidden events indicator
      markedDateIconBuilder: (event) {
        return event.icon;
      },
    );

    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: primary,
        elevation: 0,
        toolbarHeight: 50,
        title:Center(
          child: Text(
            "Daily Challenges",
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
          currentIndex: 1,
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
                "Calender",
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'RobotoBold',
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height:16),

            Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _calendarCarouselNoHeader,
              ),
            ),
          ]
        ),
      ),
    );
  }

   Widget markerRepresent(Color color, String data) {
    return new ListTile(
      leading: new CircleAvatar(
        backgroundColor: color,
        radius: cHeight * 0.022,
      ),
      title: new Text(
        data,
      ),
    );
  }
}