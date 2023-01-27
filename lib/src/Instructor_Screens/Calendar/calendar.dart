
import 'package:drive_app/src/Instructor_Screens/Calendar/imported_emails.dart';
import 'package:drive_app/src/Instructor_Screens/calendar_screen.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Setting/setting_options.dart';
import 'sync_emails.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar>
    with SingleTickerProviderStateMixin {
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
                      GestureDetector(
                          onTap: (){
                        Navigator.pop(context, MaterialPageRoute(builder: ((context) => CalendarScreen())));
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
                        'Calendar Sync',
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
                height: size.height*0.05,
              ),
              Center(
                child: Container(
                  height: size.height * 0.067,
                  width: size.width * 0.7,
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
                                  text: 'Imported',
                                ),
                              ),
                             const  Tab(
                                text: 'Syncs',
                              ),
                            ]),
                      ),
                 
                    ],
                  ),
                  
                ),
              
              ),
                Expanded(child: TabBarView
              (
                controller: tabController,
                children: const[
                ImportedEmails(),
                   SyncEmail()
            
              ]))
            
            ]),
          ),
          
        ),
        
      ),
    );
  }
}
