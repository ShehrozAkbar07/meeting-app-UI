import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button2 extends StatelessWidget {
  String texxt;
  dynamic icon;
   int mycolor;
   Button2({required this.texxt, required this.icon,required this.mycolor}) ;

  @override
  Widget build(BuildContext context) {
       return Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
      color: Color(mycolor),
        ),
  height: 50,
  width: double.infinity,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(children: [
      Icon(icon,color: Colors.white,),
      SizedBox(width: 12,),
      Text(  
         texxt,
         textAlign: TextAlign.center,
         style: const  TextStyle(
               color: Colors.white,
               fontSize: 16,
              //  fontWeight: FontWeight.bold
              //  color: Color(AppColors.titleText),
               ),
                    ),
    ],),
  )
 
);
   
    
  }
}