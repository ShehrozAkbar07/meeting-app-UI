import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlertDialougeValues extends StatelessWidget {
  String assetName;
  String texxt;
   AlertDialougeValues({required this.assetName, required this.texxt}) ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.12,
      width: size.width * 0.21,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xfff6f6f6)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Container(
              height: size.height * 0.08,
              width: size.width * 0.14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: Colors.black,
                image: DecorationImage(image: AssetImage(assetName))
              ),
            ),
          ),
          Text(
            texxt,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
