import 'package:drive_app/common/Widget/button.dart';
import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddNewMoneyDetails extends StatefulWidget {
  const AddNewMoneyDetails({Key? key}) : super(key: key);

  @override
  State<AddNewMoneyDetails> createState() => _AddNewMoneyDetailsState();
}

class _AddNewMoneyDetailsState extends State<AddNewMoneyDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.01,
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.pop(context, MaterialPageRoute(builder: ((context) => CalendarScreen())));
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.3,
                    ),
                    const Text(
                      'Money',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                ),
               SizedBox(
                  height: size.height * 0.05,
                ),  SizedBox(
                  height: size.height*0.09,
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Select',
                        suffixIcon: Icon(Icons.arrow_drop_down,size: 25,color: Color(AppColors.primary),),
                        labelText: 'Expense',
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
                  SizedBox(
                  height: size.height * 0.01,
                ),  SizedBox(
                  height: size.height*0.09,
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        hintText: 'Select',
                        filled: true,
                        suffixIcon: Icon(Icons.arrow_drop_down,size: 25,color: Color(AppColors.primary),),
                        labelText: 'Type',
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
                 SizedBox(
                  height: size.height * 0.01,
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Date',
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
                  height: size.height * 0.02,
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Amount',
                      labelStyle: const TextStyle(color: Colors.grey),
                      enabledBorder: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10))),
                ), SizedBox(
                  height: size.height * 0.02,
                ),
                    SizedBox(
                  height: size.height*0.09,
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Select',
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: Icon(Icons.arrow_drop_down,size: 25,color: Color(AppColors.primary),),
                        labelText: 'Repeat',
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
                
                SizedBox(
                  height: size.height * 0.01,
                ),  SizedBox(
                  height: size.height*0.09,
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Select',
                        suffixIcon: Icon(Icons.arrow_drop_down,size: 25,color: Color(AppColors.primary),),
                        labelText: 'Payment Method',
                        labelStyle: const TextStyle(color: Colors.grey),
                        enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),  SizedBox(
                  height: size.height * 0.02,
                ),
                SizedBox(
                  height: size.height*0.09,
                  child: TextFormField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Write',
                        labelText: 'Notes(Optional)',
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
                 SizedBox(
                  height: size.height * 0.03,
                ),
                SizedBox(
                  width: size.width*0.29,
                  child: Button(texxt: 'Save'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
