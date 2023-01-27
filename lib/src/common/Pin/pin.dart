
import 'package:drive_app/src/common/Login/login.dart';
import 'package:drive_app/src/common/Pin/otp_box.dart';
import 'package:drive_app/common/Widget/button.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



class Pin extends StatefulWidget {
  const Pin({Key? key}) : super(key: key);

  @override
  State<Pin> createState() => _PinState();
}


class _PinState extends State<Pin> {
   bool isSelected = true;
  dynamic color = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height * 0.09,
              ),
              const Center(
                child: Text(
                  'LOGO HERE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(AppColors.primary),
                      fontSize: 34,
                      //  color: Color(AppColors.titleText),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: size.height * 0.01),
              const Center(
                child: Text(
                  'Start your free trial',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    //  color: Color(AppColors.titleText),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              const Center(
                child: Text(
                  'Enter your pin here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    // color: Color(AppColors.titleText),
                    fontSize: 16,
                    //  color: Color(AppColors.titleText),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Center(
                child: Container(width: size.width * 0.8, child: const OTPBox()),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
         
   
               GestureDetector(
                onTap:  (){
                    setState(() {
                      isSelected = true;
                  });

                },
                child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                    color: isSelected ? Color(AppColors.primary) :Color(AppColors.secondary)
                      ),
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: const  [
                    Icon(Icons.person_outline,color: Colors.white,),
                    SizedBox(width: 12,),
                    Text(  
                       'Pupil or parent',
                       textAlign: TextAlign.center,
                       style:   TextStyle(
                 color: Colors.white,
                 fontSize: 16,
                //  fontWeight: FontWeight.bold
                //  color: Color(AppColors.titleText),
                 ),
                      ),
                  ],),
                )
               
              ),
              ),
               SizedBox(
                height: size.height * 0.02,
              ),
              GestureDetector(
                onTap:  (){
                    setState(() {
                      isSelected = false;
                  });

                },
                child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                    color: isSelected == false ? const Color(AppColors.primary) :const Color(AppColors.secondary)
                      ),
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: const  [
                    Icon(Icons.calendar_month,color: Colors.white,),
                    SizedBox(width: 12,),
                    Text(  
                       'Instructor',
                       textAlign: TextAlign.center,
                       style:   TextStyle(
                 color: Colors.white,
                 fontSize: 16,
                //  fontWeight: FontWeight.bold
                //  color: Color(AppColors.titleText),
                 ),
                      ),
                  ],),
                )
               
              ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              // Button2(
              //   texxt: 'instructor',
              //   icon: Icons.calendar_month,
              //   mycolor: AppColors.primary,
              // ),
              SizedBox(
                height: size.height * 0.06,
              ),
              GestureDetector(
                onTap:  (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login(isPupil: isSelected,)));
                },
                child: Button(
                  texxt: 'Continue',
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Center(
                child: Text(
                  'Forgot password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    //  color: Color(AppColors.titleText),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
