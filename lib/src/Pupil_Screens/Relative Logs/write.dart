import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Write extends StatefulWidget {
  const Write({Key? key}) : super(key: key);

  @override
  State<Write> createState() => _WriteState();
}

class _WriteState extends State<Write> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
  
    return Scaffold(
        body: Center(child: Container(
          height: size.height*0.2,
          width: size.width*0.7,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/noresult.png'))
          ),
        ),));

    
  }
}