import 'package:drive_app/src/Instructor_Screens/Pupil/search_bar.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WaitingMessage extends StatelessWidget {
  const WaitingMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.03,
          ),
          Center(
            child: SizedBox(
                height: size.height * 0.06,
                width: size.width * 0.9,
                child: const SearchBar()),
          ),
            Expanded(
              flex: 9,
              child: ListView.separated(
                separatorBuilder: (context, index) =>                Container(
            width: size.width * 0.8,
            child: const Divider(
              color: Color(0xfff5f5f6),
              thickness: 1.5,
            ),
          ),
                itemCount: 12,
                itemBuilder: ((context, index) {
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 10),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: CircleAvatar(
                            radius: 26,
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage: AssetImage('assets/images/man.jpg'),
                            ),
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
                          width: size.width * 0.05,
                        ),
                        const Text(
                          'OHRs Credit',
                          style: TextStyle(
                              fontSize: 10, color: Color(AppColors.primary)),
                        )
                      ],
                    ),
     
                  ],
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
