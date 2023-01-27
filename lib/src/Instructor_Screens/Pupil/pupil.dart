
import 'package:drive_app/src/Instructor_Screens/Calendar/calendar.dart';
import 'package:drive_app/src/Instructor_Screens/Pupil/active_message.dart';
import 'package:drive_app/src/Instructor_Screens/Pupil/inactive_message.dart';
import 'package:drive_app/src/Instructor_Screens/Pupil/waiting_message.dart';
import 'package:drive_app/common/Widget/bottom_navigation_bar.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Expense/money.dart';
import '../Setting/setting_options.dart';

class Pupil extends StatefulWidget {
  const Pupil({Key? key}) : super(key: key);

  @override
  State<Pupil> createState() => _PupilState();
}

class _PupilState extends State<Pupil>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(children: [
                SizedBox(
                      height: size.height * 0.01,
                    ),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                    children: [
                     
                      SizedBox(
                        width: size.width * 0.35,
                      ),
                      const Text(
                        'Pupil',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SizedBox(width: size.width*0.2,),
                      GestureDetector(
                          onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => Calendar())));
                      },
                        child: Container(
                          height: size.height*0.034,
                          width: size.width*0.2,
                          decoration: BoxDecoration(
                           color: Color(AppColors.primary),
                           borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 4),
                            child:   Text('Import',style: TextStyle(color: Colors.white),),
                          ),
                          
                        ),
                      )
                    ],
                  ),
               ),
               SizedBox(
                height: size.height*0.05,
              ),
              Center(
                child: Container(
                  height: size.height * 0.067,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20), color: Color.fromARGB(200, 234, 229, 229)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TabBar(
                          
                          unselectedLabelColor: Colors.black,
                          labelColor: Color(AppColors.primary),
                            indicatorPadding: EdgeInsets.zero,
                            indicatorWeight: 0,
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicator: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 231, 221, 221).withOpacity(0.5),
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
                                height: 20,
                                child: const Tab(
                                  text: 'Active',
                                ),
                              ),
                             const  Tab(
                                text: 'Waiting',
                              ),
                                const  Tab(
                                text: 'Inactive',
                              ),
                            ]),
                      ),
                 
                    ],
                  ),
                  
                ),
              
              ),
                Expanded(
                  flex: 5,
                  child: TabBarView
              (
                controller: tabController,
                children: const[
                ActiveMessage(),
                   WaitingMessage(),    
                    InactiveMessage()

            
              ]))
            
            ]),
          ),
          
        ),
        
      );
    
  }
}
