
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../common/Widget/button.dart';
import '../Contacts/contacts.dart';

class AddContacts extends StatefulWidget {
  const AddContacts({Key? key}) : super(key: key);

  @override
  State<AddContacts> createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  bool _switchValue3 = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context, MaterialPageRoute(builder: (context)=>Contacts()));
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 22,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.23,
                ),
                const Text(
                  'Add Contact',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            TextFormField(
              obscureText: false,
              // initialValue: 'Input text',
              decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    size: 25,
                    color: Color(AppColors.primary),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Name',
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
              decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: const Icon(
                    Icons.phone,
                    color: Color(AppColors.primary),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Mobile Number',
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
              height: size.height * 0.01,
            ),
            Row(
              children: [
                Text('Send App Invites To Parent'),
                SizedBox(
                  width: size.width * 0.03,
                ),
                Container(
                  width: size.width * 0.05,
                  height: size.height * 0.05,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                  ),
                  child: const Center(
                      child: Text(
                    'i',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  width: size.width * 0.20,
                ),
                Transform.scale(
                  scale: 0.8,
                  child: CupertinoSwitch(
                    activeColor: const Color(AppColors.primary),
                    value: _switchValue3,
                    onChanged: (value) {
                      setState(() {
                        _switchValue3 = value;
                      });
                    },
                  ),
                ),
              ],
            ),
             SizedBox(
                  height: size.height * 0.04,
                ),
            GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: ((context) => Calendar())));
                },
                child: SizedBox(
                  width: size.width*0.57,
                  child: Button(texxt: 'Import Parents Details'))),
          ]),
        ),
      ),
    );
  }
}
