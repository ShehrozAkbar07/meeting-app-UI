import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'alert_dialoug_values.dart';

class AlertDialoug extends StatefulWidget {
  const AlertDialoug({Key? key}) : super(key: key);

  @override
  State<AlertDialoug> createState() => _AlertDialougState();
}

class _AlertDialougState extends State<AlertDialoug> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.4,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.black,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add New',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AlertDialougeValues(
                  assetName: 'assets/images/pupil.png',
                  texxt: 'Pupil',
                ),
                AlertDialougeValues(
                  assetName: 'assets/images/gap.png',
                  texxt: 'GAP',
                ),
                AlertDialougeValues(
                  assetName: 'assets/images/away.png',
                  texxt: 'Away',
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 AlertDialougeValues(
                  assetName: 'assets/images/income.png',
                  texxt: 'Income',
                ),
                AlertDialougeValues(
                  assetName: 'assets/images/lesson.png',
                  texxt: 'Lesson',
                ),
                AlertDialougeValues(
                  assetName: 'assets/images/expense.png',
                  texxt: 'Expense',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
