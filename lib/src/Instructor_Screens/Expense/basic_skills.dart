import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../common/utils/appcolors.dart';


class BasicSkills extends StatelessWidget {
  // String value;

  BasicSkills({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(children: [
    
      Row(
        children: [
          Container(
            height: size.height * 0.06,
            width: size.width * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: const Color(AppColors.primary), width: 2),
            ),
            child: Center(
                child: Text(
              '1',
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          Container(
              height: size.height * 0.02,
              width: size.width * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffe9e9e9),
              )),
                SizedBox(
                  width: size.width * 0.02,
                ),  Container(
            height: size.height * 0.06,
            width: size.width * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: const Color(AppColors.primary), width: 2),
            ),
            child:const Center(
                child: Text(
              '2',
              style:  TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          Container(
              height: size.height * 0.02,
              width: size.width * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffe9e9e9),
              )),
                SizedBox(
                  width: size.width * 0.02,
                ),  Container(
            height: size.height * 0.06,
            width: size.width * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: const Color(AppColors.primary), width: 2),
            ),
            child:const Center(
                child: Text(
              '3',
              style:  TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          Container(
              height: size.height * 0.02,
              width: size.width * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffe9e9e9),
              )),
                SizedBox(
                  width: size.width * 0.02,
                ),  Container(
            height: size.height * 0.06,
            width: size.width * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: const Color(AppColors.primary), width: 2),
            ),
            child:const Center(
                child: Text(
              '4',
              style:  TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
          Container(
              height: size.height * 0.02,
              width: size.width * 0.13,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffe9e9e9),
              )),
                SizedBox(
                  width: size.width * 0.02,
                ),  Container(
            height: size.height * 0.06,
            width: size.width * 0.06,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border:
                  Border.all(color: const Color(AppColors.primary), width: 2),
            ),
            child: const Center(
                child:   Text(
              '5',
              style:  TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        
                
        ],
      ),
    ]);
  }
}
