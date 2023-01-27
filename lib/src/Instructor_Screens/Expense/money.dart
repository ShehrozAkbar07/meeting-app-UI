
import 'package:drive_app/src/Instructor_Screens/Add%20Expense/add_expense.dart';
import 'package:drive_app/src/Instructor_Screens/Expense/add_new_money_details.dart';
import 'package:drive_app/src/Instructor_Screens/Expense/budget._details.dart';
import 'package:drive_app/src/Instructor_Screens/Expense/milleage.dart';
import 'package:drive_app/src/Instructor_Screens/Expense/money_detail.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Setting/setting_options.dart';

class Money extends StatefulWidget {
  const Money({Key? key}) : super(key: key);

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money>
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
                   
                    SizedBox(
                      width: size.width * 0.35,
                    ),
                    const Text(
                      'Money',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    SizedBox(width: size.width*0.16,),
                    GestureDetector(
                        onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => AddNewMoneyDetails())));
                    },
                      child: Container(
                        height: size.height*0.034,
                        width: size.width*0.2,
                        decoration: BoxDecoration(
                         color: Color(AppColors.primary),
                         borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 7,vertical: 4),
                          child:   Text('Add new',style: TextStyle(color: Colors.white),),
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
                width: size.width * 0.6,
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
                                text: 'Money',
                              ),
                            ),
                           const  Tab(
                              text: 'Mileage',
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
              MoneyDetail(),
                 Milleage(),    

          
            ]))
          
          ]),
        ),
        
      ),
    );
  }
}
