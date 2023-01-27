import 'package:drive_app/src/Instructor_Screens/Expense/money.dart';
import 'package:drive_app/src/Instructor_Screens/Pupil/pupil.dart';
import 'package:drive_app/src/Instructor_Screens/calendar_screen.dart';
import 'package:drive_app/src/common/Inbox%20Message/message.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../src/Pupil_Screens/Contacts/contacts.dart';
import '../../src/Pupil_Screens/Main Screen/main_screen.dart';
import '../../src/Pupil_Screens/Relative Logs/relative_logs.dart';
import '../../src/Pupil_Screens/Resources/resources.dart';
import 'alert_dialouge.dart';

class BottomNavigationBarr extends StatefulWidget {
  bool pupil;
  BottomNavigationBarr({required this.pupil});

  @override
  State<BottomNavigationBarr> createState() => _BottomNavigationBarrState();
}

class _BottomNavigationBarrState extends State<BottomNavigationBarr> {
  // final int  index = 0;
  int currentPage = 0;
  List<Widget> pages_pupil = [
    MainScreen(),
    Resources(),
    Contacts(),
    RelativeLogs(),
  ];
  List<Widget> pages_instructor = [
    CalendarScreen(),
    Pupil(),
    Money(),
    Message(),
  ];
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    print(widget.pupil);
    return Scaffold(
      body: widget.pupil
          ? pages_pupil[currentPage]
          : pages_instructor[currentPage],
      backgroundColor: Colors.white,

      //If you want to show body behind the navbar, it should be true
      bottomNavigationBar: FloatingNavbar(
        selectedItemColor: Colors.black,
        elevation: 20,
        selectedBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: currentPage,
        items: [
          FloatingNavbarItem(
          //  icon: widget.pupil ? (Icons.home) : Icons.event_note_sharp,
              customWidget: currentPage == 0 ? Column(
                verticalDirection: VerticalDirection.down,
                children:  [
                  widget.pupil? const Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),):
                const    Text('Diary',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                 const  SizedBox(
                    width: 13,
                  child: Divider(color: Color(AppColors.primary),thickness: 2,),
                  )
                ],
              ) : widget.pupil ? Icon(Icons.home,color: Colors.grey,) : Icon(Icons.event_note_sharp),
             
              
              ),
          FloatingNavbarItem(
          //  icon: widget.pupil ? (Icons.home) : Icons.event_note_sharp,
              customWidget: currentPage == 1 ? Column(
                verticalDirection: VerticalDirection.down,
                children:  [
                  widget.pupil? const Text('Resources',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),):
                const    Text('Pupil',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                 const  SizedBox(
                    width: 13,
                  child: Divider(color: Color(AppColors.primary),thickness: 2,),
                  )
                ],
              ) : widget.pupil ? Icon(Icons.eco_rounded,color: Colors.grey,) : Icon(Icons.person),
             
              
              ),
           FloatingNavbarItem(
          //  icon: widget.pupil ? (Icons.home) : Icons.event_note_sharp,
              customWidget: currentPage == 2 ? Column(
                verticalDirection: VerticalDirection.down,
                children:  [
                  widget.pupil? const Text('Contacts',style: TextStyle(fontWeight: FontWeight.bold,fontSize:11),):
                const    Text('Expense',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                 const  SizedBox(
                    width: 13,
                  child: Divider(color: Color(AppColors.primary),thickness: 2,),
                  )
                ],
              ) : widget.pupil ? Icon(Icons.phone,color: Colors.grey,) : Icon(Icons.wallet),
             
              
              ),
           FloatingNavbarItem(
          //  icon: widget.pupil ? (Icons.home) : Icons.event_note_sharp,
              customWidget: currentPage == 3 ? Column(
                verticalDirection: VerticalDirection.down,
                children:  [
                  widget.pupil? const Text('Relative Logs',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 9),):
                const    Text('Message',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11),),
                 const  SizedBox(
                    width: 13,
                  child: Divider(color: Color(AppColors.primary),thickness: 2,),
                  )
                ],
              ) : widget.pupil ? Icon(Icons.note_add_sharp,color: Colors.grey,) : Icon(Icons.message),
             
              
              ),
        ],
        onTap: ((index) {
          print(index);
          setState(() {
            currentPage = index;
          });
        }),
      ),
      floatingActionButton: widget.pupil == false
          ? FloatingActionButton(
              backgroundColor:
                  Color(AppColors.primary), //Floating action button on Scaffold
              onPressed: () {
                showDialog(
                    context: context,
                    builder: ((context) {
                      return Dialog(
                        insetPadding: EdgeInsets.only(left: 25, right: 25),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: AlertDialoug(),

                        // title: Text('Hello'),
                      );
                    }));
                //code to execute on button press
              },
              child: const Icon(
                Icons.add,
                size: 45,
              ), //icon inside button
            )
          : SizedBox.shrink(),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
