import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Emails extends StatefulWidget {
   final Color color;
  final String text;
  final Color textColor;
  final double elevationn;
   dynamic mycolor;
  dynamic  icon;
   Emails({
  required this.color,
      required this.text,
      required this.textColor,
      required this.elevationn,
      required this.icon,
      required this.mycolor
   });

  @override
  State<Emails> createState() => _EmailsState();
}

class _EmailsState extends State<Emails> {
 bool  isChecked = false;
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

      return SizedBox(
      height: size.height*0.06, //60
      width: size.width*0.9, //100
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Container(
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
             boxShadow: [
                                      BoxShadow(
                                        color: Color.fromARGB(255, 223, 208, 208).withOpacity(0.3),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset:
                                            Offset(2, 2), // changes position of shadow
                                      ),
                                    ],
        
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: size.width*0.04),
               child: Text(
            widget.text,
            style: TextStyle(color: widget.textColor,
            fontWeight: FontWeight.bold,
            ),
          ),
             ),
          Checkbox(
            side: const BorderSide(color: Color(AppColors.primary),width: 2),
            activeColor: const Color(AppColors.primary),
              checkColor: Colors.white,
              value: isChecked,
              shape:const  CircleBorder(),
              onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
              },
            ),
          ],)
        ),
      ),
    );
    
  }
}