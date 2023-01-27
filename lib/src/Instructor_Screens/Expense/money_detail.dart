import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'budget._details.dart';

class MoneyDetail extends StatefulWidget {
  const MoneyDetail({Key? key}) : super(key: key);

  @override
  State<MoneyDetail> createState() => _MoneyDetailState();
}

class _MoneyDetailState extends State<MoneyDetail> {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(
                      height: size.height * 0.03,
                    ),
         const  Text('4th June 2020',style: TextStyle(fontSize: 16),),
         SizedBox(height: size.height*0.03,),
           BudgetDetail(
            text2Color: Colors.red,
            text2: '-200\$',
                    color:  Colors.white,
                    text: 'Advertising',
                    textColor: Colors.black,
                    elevationn: 10,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.white),
          
        ],),
      ),
    );
    
  }
}