import 'package:drive_app/common/utils/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentOptionDetail extends StatefulWidget {
  final Color color;
  final String text;
  final String text1;

  dynamic textColor;
  final Color textColor1;

  final double elevationn;
  dynamic mycolor;
  dynamic icon;
  PaymentOptionDetail(
      {required this.color,
      required this.text,
      required this.text1,
      required this.textColor,
      required this.textColor1,
      required this.elevationn,
      required this.icon,
      required this.mycolor});

  @override
  State<PaymentOptionDetail> createState() => _PaymentOptionDetailState();
}

class _PaymentOptionDetailState extends State<PaymentOptionDetail> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.075, //60
      width: size.width * 0.2, //100
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: widget.mycolor,
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 223, 208, 208).withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(2, 2), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.019),
                    child: Text(
                      widget.text,
                      style: TextStyle(
                          color: widget.textColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.02,
                        vertical: size.height * 0.005),
                    child: Text(
                      widget.text1,
                      style: TextStyle(color: widget.textColor1, fontSize: 12),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
