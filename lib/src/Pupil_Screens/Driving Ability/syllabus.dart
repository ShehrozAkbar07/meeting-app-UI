import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Instructor_Screens/Expense/basic_skills.dart';


class Syllabus extends StatefulWidget {
  const Syllabus({Key? key}) : super(key: key);

  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
                height: size.height * 0.12,
                width: double.infinity,
                // color: Colors.yellow,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: size.height * 0.035,
                        width: size.width * 0.9,
                        decoration: const BoxDecoration(
                            // color: Colors.grey,
                            ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: size.height * 0.02,
                                  width: size.width * 0.02,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.007,
                                ),
                                const Text('1: Introduced'),
                                SizedBox(
                                  width: size.width * 0.2,
                                ),
                                Container(
                                  height: size.height * 0.02,
                                  width: size.width * 0.02,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.007,
                                ),
                                const Text('4: Seldom Prompted'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: size.height * 0.035,
                        width: size.width * 0.9,
                        decoration: const BoxDecoration(
                            // color: Colors.grey,
                            ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: size.height * 0.02,
                                  width: size.width * 0.02,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.007,
                                ),
                                const Text('2: Under Full Instruction'),
                                SizedBox(
                                  width: size.width * 0.02,
                                ),
                                Container(
                                  height: size.height * 0.02,
                                  width: size.width * 0.02,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.007,
                                ),
                                const Text('5: Independent'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                        height: size.height * 0.035,
                        width: size.width * 0.9,
                        decoration: const BoxDecoration(
                            // color: Colors.grey,
                            ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.01,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: size.height * 0.02,
                                  width: size.width * 0.02,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.007,
                                ),
                                const Text('3: Prompted'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              'Basic SKills',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'Changing Gear',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              'Clutch Control',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'Cockpit Drill & Safety Check',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'Move Off Safely',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'MSPSL Routine',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'Steering',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.02,
            ),
            const Text(
              'Stop Safely',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              'Approaching',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              'Changing Gear',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              'Crossroads',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            BasicSkills(),
            SizedBox(
              height: size.height * 0.1,
            ),
          ],
        ),
      ),
    ));
  }
}
