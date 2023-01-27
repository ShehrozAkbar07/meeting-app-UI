import 'dart:convert';
import 'dart:typed_data';

import 'package:calendar_view/calendar_view.dart';
import 'package:crypto/crypto.dart';
import 'package:drive_app/src/Pupil_Screens/Lessons/next_lessons.dart';
import 'package:drive_app/src/common/Pin/pin.dart';
import 'package:drive_app/common/Widget/bottom_navigation_bar.dart';
import 'package:drive_app/testing.dart';
import 'package:flutter/material.dart';

import 'src/Instructor_Screens/Expense/add_new_money_details.dart';
import 'common/calendar/model/event.dart';

void main() {
  var secret_key = '123';
  var string_to_sign = 'StringToSign';

  // Create the HMAC-SHA1 of the string_to_sign using the secret key
  var hmacSha1 = Hmac(sha1, utf8.encode(secret_key));
  var digest = hmacSha1.convert(utf8.encode(string_to_sign));

  // Encode the resulting HMAC-SHA1 as a base64 string
  var base64EncodedSignature = base64Encode(digest.bytes);
  print("hello");
  print(base64EncodedSignature);
  // var key = utf8.encode('388bcd7a7bbd84a9725b42209536f65dbd44647e');

  // var hmacSha1 = new Hmac(sha1, key);
  // // var bytes = utf8.encode('woolhadotcom');
  // List<int> bytes = utf8.encode('388bcd7a7bbd84a9725b42209536f65dbd44647e');
  // var b = base64.encode(key);

  // var sha1Result = hmacSha1.convert(bytes);
  // //  base64
  // //   .encode(utf8.encode(hmacSha1)); // dXNlcm5hbWU6cGFzc3dvcmQ=

  // print("sha Result:$b");
}

//  => runApp(MyApp());
DateTime get _now => DateTime.now();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider<Event>(
      controller: EventController<Event>()..addAll(_events),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: NextLesson(),
      ),
    );
  }
}

List<CalendarEventData<Event>> _events = [
  CalendarEventData(
    date: _now,
    event: Event(title: "Joe's Birthday"),
    title: "Project meeting",
    description: "Today is project meeting.",
    startTime: DateTime(_now.year, _now.month, _now.day, 18, 30),
    endTime: DateTime(_now.year, _now.month, _now.day, 22),
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 1)),
    startTime: DateTime(_now.year, _now.month, _now.day, 18),
    endTime: DateTime(_now.year, _now.month, _now.day, 19),
    event: Event(title: "Wedding anniversary"),
    title: "Wedding anniversary",
    description: "Attend uncle's wedding anniversary.",
  ),
  CalendarEventData(
    date: _now,
    startTime: DateTime(_now.year, _now.month, _now.day, 14),
    endTime: DateTime(_now.year, _now.month, _now.day, 17),
    event: Event(title: "Football Tournament"),
    title: "Football Tournament",
    description: "Go to football tournament.",
  ),
  CalendarEventData(
    date: _now.add(Duration(days: 3)),
    startTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 10),
    endTime: DateTime(_now.add(Duration(days: 3)).year,
        _now.add(Duration(days: 3)).month, _now.add(Duration(days: 3)).day, 14),
    event: Event(title: "Sprint Meeting."),
    title: "Sprint Meeting.",
    description: "Last day of project submission for last year.",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        14),
    endTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        16),
    event: Event(title: "Team Meeting"),
    title: "Team Meeting",
    description: "Team Meeting",
  ),
  CalendarEventData(
    date: _now.subtract(Duration(days: 2)),
    startTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        10),
    endTime: DateTime(
        _now.subtract(Duration(days: 2)).year,
        _now.subtract(Duration(days: 2)).month,
        _now.subtract(Duration(days: 2)).day,
        12),
    event: Event(title: "Chemistry Viva"),
    title: "Chemistry Viva",
    description: "Today is Joe's birthday.",
  ),
];
