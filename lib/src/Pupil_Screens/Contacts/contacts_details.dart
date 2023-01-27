import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactsDetails extends StatelessWidget {
  const ContactsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return    Expanded(
              flex: 9,
              child: ListView.separated(
                separatorBuilder: (context, index) =>   Container(
            width: size.width * 0.8,
            child: const Divider(
              color: Color(0xfff5f5f6),
              thickness: 1.5,
            ),
          ),
                itemCount: 12,
                itemBuilder: ((context, index) {
                return  Container(
              height: size.height * 0.08,
              width: size.width * 0.9,
              // color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 10,right: 10, top: 10),
                        child: CircleAvatar(
                          radius: 20,
                          child: CircleAvatar(
                            radius: 27,
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
                          
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.07,
                      ),
                   
                    ],
                  ),
     
                ],
              ),
                      );
                
              })),
            );
    
  }
}
