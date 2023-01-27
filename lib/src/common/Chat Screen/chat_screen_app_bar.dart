
import 'package:drive_app/src/common/Inbox%20Message/message.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';


class ChatScreenAppBar extends StatelessWidget {
  const ChatScreenAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return          Container(
             height: size.height * 0.10,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(AppColors.primary),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(40))),
              child:  Row(
                children: [
                   SizedBox(
                    width: size.width * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => Message())));
                },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      size: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                const   CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/man.jpg'),
                  ),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                   Container(
                      width: size.width * 0.52,
                      // color: Colors.grey,
                      child:const  Text(
                        'Dan Wells',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      )),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                const   Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Colors.white,
                  )
                ],
              ),
             );
    
  }
}