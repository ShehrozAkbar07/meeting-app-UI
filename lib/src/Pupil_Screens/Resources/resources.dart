
import 'package:drive_app/src/Pupil_Screens/Resources/resources_option.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Resources extends StatelessWidget {
  const Resources({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
             SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
               
                SizedBox(
                  width: size.width * 0.35,
                ),
                const Text(
                  'Resources',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
          
             
            SizedBox(
              height: size.height * 0.02,
            ),
            ResourcesOption(
                color: Colors.white,
                text: 'Book Theory Test',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ),
            ResourcesOption(
                color: Colors.white,
                text: 'Book Driving Test',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ),
            ResourcesOption(
                color: Colors.white,
                text: 'MOT Check',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ),
          
          ]),
        ),
      ),
    );
  }
}
