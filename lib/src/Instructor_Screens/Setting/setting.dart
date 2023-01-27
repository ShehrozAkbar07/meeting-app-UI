
import 'package:drive_app/src/Instructor_Screens/Setting/setting_options.dart';
import 'package:drive_app/src/Instructor_Screens/calendar_screen.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(children: [
                 SizedBox(
                  height: size.height * 0.02,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){
               Navigator.pop(context,
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
                      'Setting',
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
                SettingOptions(
                  color: const Color(AppColors.primary),
                  text: 'Stats',
                  textColor: Colors.white,
                  elevationn: 5,
                  icon: Icons.arrow_forward_ios,
                  mycolor: Colors.white,
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SettingOptions(
                    color: const Color(AppColors.primary),
                    text: 'Driving Test',
                    textColor: Colors.white,
                    elevationn: 10,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.white),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SettingOptions(
                    color: const Color(AppColors.primary),
                    text: 'Profile',
                    textColor: Colors.white,
                    elevationn: 10,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.white),
                    SizedBox(
                  height: size.height * 0.02,
                ),
                 Container(
                    width: size.width * 0.7,
                    child: const Divider(
                      color: Color(0xffe5e5e5),
                      thickness: 0.8,
                    )),
                SizedBox(
                  height: size.height * 0.02,
                ),
                SettingOptions(
                    color: Colors.white,
                    text: 'Setting',
                    textColor: Colors.black,
                    elevationn: 5,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.black),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SettingOptions(
                    color: Colors.white,
                    text: 'Resources',
                    textColor: Colors.black,
                    elevationn: 5,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.black),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SettingOptions(
                    color: Colors.white,
                    text: 'PDI Training',
                    textColor: Colors.black,
                    elevationn: 5,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.black),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SettingOptions(
                    color: Colors.white,
                    text: 'App Terms & Condition',
                    textColor: Colors.black,
                    elevationn: 5,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.black),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SettingOptions(
                    color: Colors.white,
                    text: 'Call Us',
                    textColor: Colors.black,
                    elevationn: 5,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.black),
                SizedBox(
                  height: size.height * 0.03,
                ),
               SettingOptions(
                    color: const Color(AppColors.primary),
                    text: 'Log Out',
                    textColor: Colors.white,
                    elevationn: 10,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.white),
                    SizedBox(height: size.height*0.1,),
              ]),
            ),
          ),
        ),
    );
    
  }
}
