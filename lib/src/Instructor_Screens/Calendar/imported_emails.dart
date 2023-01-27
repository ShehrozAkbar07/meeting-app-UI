
import 'package:drive_app/src/Instructor_Screens/Calendar/emails.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ImportedEmails extends StatelessWidget {
  const ImportedEmails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            SizedBox(height:size.height*0.04),
             Emails(
                    color:  Colors.white,
                    text: 'Jazmin1@gmail.com',
                    textColor: Colors.black,
                    elevationn: 10,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.white),
                    SizedBox(
                  height: size.height * 0.03,
                ),
                  Emails(
                    color:  Colors.white,
                    text: 'Cletus_Turner@gmail.com',
                    textColor: Colors.black,
                    elevationn: 10,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.white),  SizedBox(
                  height: size.height * 0.03,
                ),
                  Emails(
                    color:  Colors.white,
                    text: 'Ernie_Trieutel@yahoo.com',
                    textColor: Colors.black,
                    elevationn: 10,
                    icon: Icons.arrow_forward_ios,
                    mycolor: Colors.white),
                      SizedBox(
                  height: size.height * 0.03,
                ),
             
                      SizedBox(
                  height: size.height * 0.03,
                ),
                
          ],),
        ),
      )

    );
    
  }
}