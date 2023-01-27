import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddExpense extends StatefulWidget {
  const AddExpense({Key? key}) : super(key: key);

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
   String Title = 'DropDownButton';

  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(children: [
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
                  Container( 
                    height: 60,
                                  padding:
                                     const  EdgeInsets.only(left: 4, right: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(
                                          color: Color(AppColors.primary),
                                          width: 2)),
                                  child: DropdownButtonFormField(
                                            decoration: InputDecoration(filled: true, labelText: 'Country'),


                                      // focusColor: const Color(AppColors.primary),
                                      elevation: 4,
                                      isExpanded: true,
                                      hint: const Text(
                                        'Select reason',
                                        style: TextStyle(
                                            color: Colors.black),
                                      ),
                                      items: items.map((String items) {
                                        return DropdownMenuItem(
                                          value: items,
                                          child: Text(items),
                                        );
                                      }).toList(),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          dropdownvalue = newValue!;
                                        });
                                      }),
                                ),
              
          ],),
        ),
      ),
    );
    
  }
}