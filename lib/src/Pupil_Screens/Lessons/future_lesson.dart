import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'lesson_option_details.dart';

class FutureLesson extends StatefulWidget {
  const FutureLesson({Key? key}) : super(key: key);

  @override
  State<FutureLesson> createState() => _FutureLessonState();
}

class _FutureLessonState extends State<FutureLesson> {
  List<String> text_one = ['Delivered', 'Cancelled', 'Booked', 'Credit'];
  List<String> text_two = ['0Hrs', '0Hrs', '0Hrs', '0Hrs'];
  dynamic selected = null;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: Center(child: Container(
          height: size.height*0.2,
          width: size.width*0.7,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/noresult.png'))
          ),
        ),));
  }
}
