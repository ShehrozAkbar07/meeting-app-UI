import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileDetails extends StatelessWidget {
   final Color color;
  final String text;
  final Color textColor;
  final double elevationn;
   dynamic mycolor;
  dynamic  icon;
   ProfileDetails({
  required this.color,
      required this.text,
      required this.textColor,
      required this.elevationn,
      required this.icon,
      required this.mycolor
   });

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

      return SizedBox(
      height: size.height*0.06, //60
      width: double.infinity, //100
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(color),
                  shadowColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 250, 242, 242)),
                   elevation: MaterialStateProperty.all(elevationn),
                  
          shape: MaterialStateProperty.all(
            
            
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
            ),
          ),
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Text(
          text,
          style: TextStyle(color: textColor,
          fontWeight: FontWeight.bold,
          ),
        ),
        Icon(icon,size: 17,color: mycolor,),
        ],)
      ),
    );
    
  }
}