import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Button extends StatelessWidget {
  String texxt;
   Button({Key? key, required this.texxt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
          Size size = MediaQuery.of(context).size;

   return Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
      color: const Color(AppColors.primary),
  ),
  height: 40,
  child: Center(
    child: Text(  
         texxt,
         textAlign: TextAlign.center,
         style: const  TextStyle(
               color: Colors.white,
               fontSize: 16,
               fontWeight: FontWeight.bold
              //  color: Color(AppColors.titleText),
               ),
                    ),
  ),
 
);
    
  }
}