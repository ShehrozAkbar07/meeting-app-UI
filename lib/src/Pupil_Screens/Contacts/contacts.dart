
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../Instructor_Screens/Pupil/search_bar.dart';
import '../Add_Contacts/add_contacts.dart';
import 'contacts_details.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                  ),
                  SizedBox(
                    width: size.width * 0.25,
                  ),
                  const Text(
                    'Contacts',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: size.width * 0.17,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => AddContacts())));
                    },
                    child: Container(
                      height: size.height * 0.034,
                      width: size.width * 0.21,
                      decoration: BoxDecoration(
                          color: Color(AppColors.primary),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Padding(
                        padding:  EdgeInsets.symmetric(
                            horizontal: 9, vertical: 4),
                        child:  Text(
                          'Add new',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                width: size.width * 0.9,
                child: SearchBar(),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              ContactsDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
