
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Instructor_Screens/Calendar/calendar.dart';
import '../../Instructor_Screens/Setting/setting.dart';
import '../Profile/profile.dart';

class MainScreenAppBar extends StatefulWidget {
  IconData icon;
   MainScreenAppBar({required this.icon}) ;

  @override
  State<MainScreenAppBar> createState() => _MainScreenAppBarState();
}

class _MainScreenAppBarState extends State<MainScreenAppBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.18,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/group92.png'),fit: BoxFit.cover),
          color: Color(AppColors.primary),
          borderRadius: BorderRadius.only(bottomRight: Radius.circular(40))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
      
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: size.height*0.004,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(
              //   width: size.width * 0.05,
              // ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Setting())));
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.09,
                  decoration: const BoxDecoration(
                      color: Color(0xff8856fa), shape: BoxShape.circle),
                  child:  Center(
                    child: Icon(
                      widget.icon,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Calendar())));
                },
                child: Container(
                  height: size.height * 0.07,
                  width: size.width * 0.09,
                  decoration: const BoxDecoration(
                      color: Color(0xff8856fa), shape: BoxShape.circle),
                  child: const Center(
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              //   Container(

              //   height: size.height*0.09,
              //   width: size.width*0.09,
              //   decoration: const BoxDecoration(
              //     color: Colors.black,
              //     shape: BoxShape.circle
              //   ),
              //   child: const Center(
              //     child:  Icon(
              //       Icons.arrow_back_ios,
              //       size: 25,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: size.width * 0.04,
              // ),
              // const CircleAvatar(
              //   radius: 25,
              //   backgroundColor: Colors.black,
              // ),
              // SizedBox(
              //   width: size.width * 0.02,
              // ),
              // Container(
              //     width: size.width * 0.52,
              //     // color: Colors.grey,
              //     child: const Text(
              //       'Dan Wells',
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontWeight: FontWeight.bold,
              //           fontSize: 16),
              //     )),
              // SizedBox(
              //   width: size.width * 0.04,
              // ),
              // const Icon(
              //   Icons.more_vert,
              //   size: 30,
              //   color: Colors.white,
              // )
            ],
          ),
          SizedBox(height: size.height*0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Good morning!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        // fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.001,
                    ),
                    const Text(
                      "Terrence Hansen",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width * 0.23,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: CircleAvatar(
                  radius: 30,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    child: const CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/man.jpg'),
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
