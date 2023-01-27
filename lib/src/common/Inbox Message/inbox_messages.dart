
import 'package:drive_app/src/Instructor_Screens/Pupil/search_bar.dart';
import 'package:drive_app/src/common/Chat%20Screen/chat_screen.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InboxMessage extends StatelessWidget {
  const InboxMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 5),
            child: SizedBox(
                height: size.height * 0.06,
                child: Row(
                  children: [
                    SizedBox(width: size.width * 0.8, child: const SearchBar()),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    const Icon(Icons.more_vert)
                  ],
                )),
          ),
          Expanded(
            flex: 9,
            child: ListView.separated(
                separatorBuilder: (context, index) => Container(
                      width: size.width * 0.8,
                      child: const Divider(
                        color: Color(0xfff5f5f6),
                        thickness: 1.5,
                      ),
                    ),
                itemCount: 8,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: (){
                                       Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen()));

                      },
                      child: Container(
                        height: size.height * 0.1,
                        width: size.width * 0.9,
                        // color: Colors.grey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.black,
                                    backgroundImage:
                                        AssetImage('assets/images/man.jpg'),
                                    radius: 26,
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.01,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width * 0.52,
                                        // color: Colors.grey,
                                        child: const Text(
                                          "Sienna McKinzie",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.014,
                                      ),
                                      Container(
                                        width: size.width * 0.52,
                                        // color: Colors.grey,
                                        child: const Text(
                                          "Not Lesson Booked",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.07,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Text(
                                      '3 minute ago',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black,
                                          fontStyle: FontStyle.italic),
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                      width: size.width * 0.05,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(AppColors.primary),
                                      ),
                                      child: const Center(
                                          child: Text(
                                        '3',
                                        style: TextStyle(color: Colors.white),
                                      )),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
