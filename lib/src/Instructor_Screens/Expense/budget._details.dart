import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BudgetDetail extends StatefulWidget {
   final Color color;
  final String text;
    final String text2;

  final Color textColor;
    final Color text2Color;

  final double elevationn;
   dynamic mycolor;
  dynamic  icon;
   BudgetDetail({
    required this.text2Color,
  required this.color,
      required this.text,
      required this.textColor,
      required this.elevationn,
      required this.icon,
     required this.text2,

      required this.mycolor
   });

  @override
  State<BudgetDetail> createState() => _BudgetDetailState();
}

class _BudgetDetailState extends State<BudgetDetail> {
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
            children: [
             Padding(
               padding:  EdgeInsets.symmetric(horizontal: size.width*0.04),
               child: Container(
                // color: Colors.grey,
                width: size.width*0.5,
                 child: Text(
            widget.text,
            style: TextStyle(color: widget.textColor,
            fontWeight: FontWeight.bold,
            ),
          ),
               ),
          
             ),
             SizedBox(width: size.width*0.1,),
                          Text(
            widget.text2,
            style: TextStyle(color: widget.text2Color,
            fontWeight: FontWeight.bold,
            
            ),
          ),
          Icon(Icons.more_vert),
          
          ],)
        ),
      ),
    );
    
  }
}