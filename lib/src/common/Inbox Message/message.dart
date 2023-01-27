
import 'package:drive_app/src/common/Inbox%20Message/inbox_messages.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Instructor_Screens/Pupil/inactive_message.dart';
import '../../Instructor_Screens/Pupil/waiting_message.dart';


class Message extends StatefulWidget {
  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message>
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

    return  Scaffold(
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
                       
                        SizedBox(
                          width: size.width * 0.35,
                        ),
                        const Text(
                          'Inbox',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(width: size.width*0.17,),
                        Container(
                          height: size.height*0.034,
                          width: size.width*0.2,
                          decoration: BoxDecoration(
                           color: const Color(AppColors.primary),
                           borderRadius: BorderRadius.circular(20)
                          ),
                          child: const  Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                            child:   Text('Send',style: TextStyle(color: Colors.white),),
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
                                    text: 'inbox',
                                  ),
                                ),
                               const  Tab(
                                  text: 'Send',
                                ),
                                  const  Tab(
                                  text: 'Broadcast',
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
                  InboxMessage(),
                     WaitingMessage(),    
                      InactiveMessage()
    
              
                ]))
              
              ]),
            ),
            
          ),
          
        ),
    );
    
  }
}
