
import 'package:drive_app/src/common/Chat%20Screen/chat_screen_app_bar.dart';
import 'package:drive_app/src/common/Chat%20Screen/chat_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


import '../../../common/utils/appcolors.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          ChatScreenAppBar(),
          Expanded(flex: 4,
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                    
                  const Center(child: Text('Four days ago')),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                    
                  ChatText(
                    texxt: 'Yeah. Right! As if that would\nhappen!',
                    color: const Color(AppColors.ChatTextBackground),
                    textcolor: const Color(AppColors.primary),
                    val: Alignment.topLeft,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ChatText(
                    texxt: 'Anywho, gotta roll, G night!',
                    color: const Color(AppColors.ChatTextBackground2),
                    textcolor: Colors.black,
                    val: Alignment.topRight,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  ChatText(
                    texxt: 'Good Night!',
                    color: const Color(AppColors.ChatTextBackground),
                    textcolor: Color(AppColors.primary),
                    val: Alignment.topLeft,
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Center(child: Text('Today')),
                    
                  ChatText(
                    texxt: 'Wassupp!!!!!',
                    color: const Color(AppColors.ChatTextBackground2),
                    textcolor: Colors.black,
                    val: Alignment.topRight,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ChatText(
                    texxt: 'So what did I miss yesterday?',
                    color: const Color(AppColors.ChatTextBackground2),
                    textcolor: Colors.black,
                    val: Alignment.topRight,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ChatText(
                    texxt:
                        'So, while you were gone, a lot has happened, Let me give you a brief\nidea.',
                    color: const Color(AppColors.ChatTextBackground),
                    textcolor: Color(AppColors.primary),
                    val: Alignment.topLeft,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ChatText(
                    texxt:
                        'Natalie from HR cam to our floor\nlooking for Steven. Remember the\nmistake he had made last week?.\nIt was definitely related to this!!!!',
                    color: const Color(AppColors.ChatTextBackground),
                    textcolor: Color(AppColors.primary),
                    val: Alignment.topLeft,
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  ChatText(
                    texxt: 'You know about this,right?',
                    color: const Color(AppColors.ChatTextBackground),
                    textcolor: Color(AppColors.primary),
                    val: Alignment.topLeft,
                  ), SizedBox(
                    height: size.height * 0.02,
                  ),
                 
                    
                  //           Container(
                  //             alignment: Alignment.topLeft,
                  //   child:  Padding(
                  //     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  //     child: Text(
                  //       'Yeah,Right! as if that would\nhappen!',
                  //       style: TextStyle(
                  //           color: Colors.black, fontSize: 16,),
                  //     ),
                  //   ),
                    
                  //   decoration: BoxDecoration(
                  //       color: Color.fromARGB(255, 214, 208, 208),
                  //       borderRadius: BorderRadius.circular(10)),
                  // ),
               
                ],
              ),
            ),
          )),
       _sendMessageArea() 

          
        ]),
        
      ),
    );
  }
}

  _sendMessageArea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(
        children: <Widget>[
         
          Expanded(
            child:  SizedBox(
              height: 40,
              width: 80,
              child: TextFormField(
                        obscureText: false,
                           
                        // initialValue: 'Input text',
                        decoration: InputDecoration(
                          hintText: 'Type here...',
                            disabledBorder: InputBorder.none,
                            border: InputBorder.none,
                            
                            suffixIcon:const Icon(
                              Icons.attach_file,
                              color:Colors.grey
                            ), 
                            fillColor: Color(0xffeaeaea),
                            filled: true,
                            labelStyle: const TextStyle(color: Colors.grey),
                            enabledBorder: UnderlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10))),
                      ),
            ),
          ),
          SizedBox(width: 10,),
        Container(
                          height:40,
                          width: 90,
                          decoration: BoxDecoration(
                           color: Color(AppColors.primary),
                           borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text('Send',style: TextStyle(color: Colors.white),)),
                          
                        ),
        ],
      ),
    );
  }
