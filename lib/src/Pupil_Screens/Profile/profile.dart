
import 'package:drive_app/src/Pupil_Screens/Profile/profile_details.dart';
import 'package:drive_app/src/common/Pin/pin.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Instructor_Screens/calendar_screen.dart';
import '../../common/Login/login.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
                GestureDetector(
                  onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => CalendarScreen())));
                },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                ),
                const Text(
                  'Profile',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),  
          ProfileDetails(
                color: Colors.white,
                text: 'Edit Profile',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
             
            SizedBox(
              height: size.height * 0.03,
            ),
            ProfileDetails(
                color: Colors.white,
                text: 'Day Availability',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ),
            ProfileDetails(
                color: Colors.white,
                text: 'Change Profile Photo',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ),
            ProfileDetails(
                color: Colors.white,
                text: 'Invite Parents',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ), ProfileDetails(
                color: Colors.white,
                text: 'Call Instructor',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
           
            SizedBox(
              height: size.height * 0.03,
            ), ProfileDetails(
                color: Colors.white,
                text: 'Send SMS Message',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
          
            SizedBox(
              height: size.height * 0.03,
            ), ProfileDetails(
                color: Colors.white,
                text: 'Driving School Terms & Conditions',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ), ProfileDetails(
                color: Colors.white,
                text: 'App Terms of Use',
                textColor: Colors.black,
                elevationn: 5,
                icon: Icons.arrow_forward_ios,
                mycolor: Colors.black),
            SizedBox(
              height: size.height * 0.03,
            ), InkWell(
                onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const Pin(
                                      
                                      ))));
                        },
              child: ProfileDetails(
                  color: Colors.white,
                  text: 'Logout',
                  textColor: Colors.black,
                  elevationn: 5,
                  icon: Icons.arrow_forward_ios,
                  mycolor: Colors.black),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
          
          ]),
        ),
      ),
    );
  }
}
