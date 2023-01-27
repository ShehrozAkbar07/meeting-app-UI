import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: ((context, index) {


      return Padding(
        padding:  EdgeInsets.only(bottom: size.height*0.02),
        child: Container(
        decoration: BoxDecoration(
            color: Color(0xfff3eeff), borderRadius: BorderRadius.circular(10)),
        height: size.height * 0.1,
        width: double.infinity,
        // color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                    child: Container(
                      height: size.height * 0.078,
                      width: size.width * 0.15,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('assets/images/man.jpg')),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                      ),
                    )),
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
                          "Ole Lueilwitz",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // SizedBox(
                      //   height: size.height * 0.01,
                      // ),
                      Container(
                        width: size.width * 0.54,
                        // color: Colors.grey,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:   [
                            Container(
                              height: size.height*0.02,
                              width: size.width*0.22,
                              // color: Colors.blue,
                              child:  const  Text(
                          "07-DEC-2022",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                          ),
                        ),
                            ), 
                            Text(' ●',style: TextStyle(fontSize: 20),),
                            SizedBox(width: size.width*0.01,),
                             Container(
                               height: size.height*0.02,
                              width: size.width*0.19,
                              // color: Colors.yellow,
                               child: const Text(
                          "09:31 PM",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                             ),

                        ],),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      '23\$',
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(AppColors.primary),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
    ),
      );
    }));
  }
}
