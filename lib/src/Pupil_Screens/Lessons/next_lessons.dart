
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Main Screen/main_screen.dart';
import 'future_lesson.dart';


class NextLesson extends StatefulWidget {
  const NextLesson({Key? key}) : super(key: key);

  @override
  State<NextLesson> createState() => _NextLessonState();
}

class _NextLessonState extends State<NextLesson>
    with SingleTickerProviderStateMixin {
  List<String> text_one = ['Delivered', 'Cancelled', 'Booked','Credit'];
  List<String> text_two = ['0Hrs', '0Hrs', '0Hrs', '0Hrs'];
  dynamic selected = null;

  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => MainScreen())));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 22,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.2,
                  ),
                  const Text(
                    'Next Lesson',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.023,
            ),
             SizedBox(
          height: size.height * 0.08,
          width: size.width * 0.92,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: text_one.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      print(index);
                      selected = index;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                        height: 80,
                        width: 73,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: selected != null && selected == index
                              ? Color(AppColors.primary)
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 246, 236, 236)
                                  .withOpacity(0.3),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(2, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text_one[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: selected != null && selected == index
                                          ? Colors.white
                                          : const Color(AppColors.primary),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  text_two[index],
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    
                                      color: selected != null && selected == index
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                );
                // return GestureDetector(
                //   onTap: (){
                //     print(index);
                //     setState(() {
                //       selected == index;
                //     });
                //   },
                //   child: LessonOptionDetails(
                //       color: Colors.white,
                //       text: text_one[index],
                //       text1: text_two[index],
                //       textColor1:
                //           selected != null && selected==index ? Colors.white : Colors.black,
                //       textColor: selected != null && selected == index
                //           ? Colors.white
                //           : Color(AppColors.primary),
                //       elevationn: 10,
                //       mycolor: selected != null && selected ==index
                //           ? Color(AppColors.primary)
                //           : Colors.white),
                // );
              })),
        ),

           
            SizedBox(
              height: size.height * 0.027,
            ),
            Center(
              child: Container(
                height: size.height * 0.078,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color.fromARGB(200, 234, 229, 229)),
                child: Column(
                  children: [
                    TabBar(
                        padding: EdgeInsets.all(6),
                        unselectedLabelColor: Colors.black,
                        labelColor: Color(AppColors.primary),
                        indicatorWeight: 0,
                        indicator: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 198, 187, 187)
                                    .withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 4), // changes position of shadow
                              ),
                            ],
                            borderRadius: BorderRadius.circular(28)),
                        controller: tabController,
                        tabs: [
                          Container(
                            child: const Tab(
                              text: 'Future Lesson',
                            ),
                          ),
                          const Tab(
                            text: 'Past Lesson',
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Expanded(
                child: TabBarView(controller: tabController, children: const [
              FutureLesson(),
              FutureLesson(),
              // SyncEmail(),
            ]))
          ]),
        ),
      ),
    );
  }
}
