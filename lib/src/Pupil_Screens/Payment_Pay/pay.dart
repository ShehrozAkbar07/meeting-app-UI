
import 'package:drive_app/src/Pupil_Screens/Payment_Pay/recent_activity.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Contacts/contacts.dart';

class Pay1 extends StatefulWidget {
  const Pay1({Key? key}) : super(key: key);

  @override
  State<Pay1> createState() => _Pay1State();
}

class _Pay1State extends State<Pay1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            Container(
              height: size.height * 0.26,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.black,
                image: DecorationImage(image: AssetImage('assets/images/creditcard.png'))
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            const Text(
              'Recent Activity',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Expanded(
                child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => Contacts())));
                    },
                    child: RecentActivity()))
          ],
        ),
      ),
    );
  }
}
