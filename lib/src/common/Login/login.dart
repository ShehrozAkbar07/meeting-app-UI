
import 'package:drive_app/common/Widget/bottom_navigation_bar.dart';
import 'package:drive_app/common/Widget/button.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatelessWidget {
  final bool isPupil;
  const Login({Key? key, required this.isPupil}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xffe9e9e9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.16,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color(AppColors.primary),
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30))),
                child: Stack(children: [
                  Positioned(
                    left: size.width * 0.084,
                    child: Container(
                      height: size.height * 0.161,
                      width: size.width * 0.91,
                      decoration: const  BoxDecoration(
                          // borderRadius: BorderRadius.circular(10),
                          // color: Colors.black,
                          image:  DecorationImage(
                              image: AssetImage('assets/images/girl.png'),fit: BoxFit.cover,)),
                    ),
                  ),
                  Positioned(
                    top: size.height*0.04,
                    left: 20,
                    child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      
                      "Login Now!",
                      textAlign: TextAlign.center,
                      
                      style: TextStyle(
                        wordSpacing: 4,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 37,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.001,
                    ),
                    const Text(
                      "Please login to continue.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          ),
                    ),
                  ],
                ),
                    
                    )
                ]),
              ),
              SizedBox(height: size.height * 0.01),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    TextFormField(
                      obscureText: false,
                      // initialValue: 'Input text',
                      decoration: InputDecoration(
                          disabledBorder: InputBorder.none,
                          border: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.person_outline,
                            color: Color(AppColors.primary),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'User name or mail',
                          labelStyle: const TextStyle(color: Colors.grey),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: const Icon(
                            Icons.fingerprint,
                            color: Color(AppColors.primary),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          labelText: 'Password',
                          labelStyle: const TextStyle(color: Colors.grey),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Colors.black,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      BottomNavigationBarr( pupil: isPupil,))));
                        },
                        child: Button(texxt: 'Login')),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Signup?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            //  color: Color(AppColors.titleText),
                          ),
                        ),
                        Text(
                          'Forgot password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            //  color: Color(AppColors.titleText),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
