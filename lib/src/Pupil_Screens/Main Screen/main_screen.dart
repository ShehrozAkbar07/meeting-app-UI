
import 'package:drive_app/src/Pupil_Screens/Main%20Screen/main_screen_app_bar.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../common/Inbox Message/message.dart';
import '../Driving Ability/driving_ability.dart';
import '../Lessons/next_lessons.dart';
import '../Payment_Pay/payment_pay.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            MainScreenAppBar(icon: Icons.sort,),
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: size.height * 0.14,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 226, 218, 218)
                              .withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          SizedBox(
                            height: size.height * 0.015,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Next Lesson',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Not Booked'),
                            ],
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: size.width * 0.03,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => NextLesson()));
                                },
                                child: Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.35,
                                  decoration: BoxDecoration(
                                      color: Color(AppColors.primary),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.04,
                                      ),
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      const Text(
                                        'Lesson',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.04,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              DrivingAbility())));
                                },
                                child: Container(
                                  height: size.height * 0.05,
                                  width: size.width * 0.35,
                                  decoration: BoxDecoration(
                                      color: Color(AppColors.primary),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: size.width * 0.04,
                                      ),
                                      const Icon(
                                        Icons.calendar_month,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: size.width * 0.03,
                                      ),
                                      const Text(
                                        'Progress',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  const Text(
                    'Stay up to Date',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentPay()));
                        },
                        child: Container(
                          height: size.height * 0.065,
                          width: size.width * 0.27,
                          decoration: BoxDecoration(
                              color: const Color(0xffe5e5e5),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            'Pay',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Message())));
                        },
                        child: Container(
                          height: size.height * 0.065,
                          width: size.width * 0.27,
                          decoration: BoxDecoration(
                              color: const Color(0xffe5e5e5),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            'Inbox',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          )),
                        ),
                      ),
                      Container(
                        height: size.height * 0.065,
                        width: size.width * 0.27,
                        decoration: BoxDecoration(
                            color: const Color(0xffe5e5e5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                            child: Text(
                          'Gap',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Container(
                      height: size.height * 0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 226, 218, 218)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          
                          Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 10),
                            // child: CircularPercentIndicator(
                            //     radius: 35,
                            //     lineWidth: 5.0,
                            //     percent: 0.75,
                            //     center: const Text("75%",
                                
                            //         style: TextStyle(color: Color(0xFF535355),fontWeight: FontWeight.bold)),
                            //     linearGradient: const  LinearGradient(
                            //         begin: Alignment.topRight,
                            //         end: Alignment.bottomLeft,
                            //         colors: <Color>[
                            //           Color(AppColors.primary),
                            //           Color(AppColors.primary)
                            //         ]),
                            //     rotateLinearGradient: true,
                            //     circularStrokeCap: CircularStrokeCap.round),
                            child: Container(
                              height: 150,
                              width: 150,
                              decoration: const BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/grp89.png')),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.1,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Theory Test',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: size.height * 0.003,
                                ),
                                const Text('Not Booked'),
                                SizedBox(
                                  height: size.height * 0.03,
                                ),
                                const Text(
                                  'Practical Test',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: size.height * 0.003,
                                ),
                                const Text('Not Booked'),
                                SizedBox(
                                  height: size.height * 0.03,
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
