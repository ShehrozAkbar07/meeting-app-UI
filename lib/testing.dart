// import 'package:crypto/crypto.dart';
// import 'package:flutter/material.dart';
//   import 'dart:convert';

import 'dart:convert';

import 'package:crypto/crypto.dart';

void main() {
  var key = utf8.encode('PASSWORD1234');

  var hmacSha1 = new Hmac(sha1, key);
  var bytes = utf8.encode('woolhadotcom');

  Digest sha1Result = hmacSha1.convert(bytes);

  print("sha Result:$sha1Result");
    print("sha Result:$sha1Result");

}

// class Testing extends StatefulWidget {
//   const Testing({super.key});

//   @override
//   State<Testing> createState() => _TestingState();
// }


// class _TestingState extends State<Testing> {
//     var hmacMd5 = new  Hmac(sha1,key);
//   Digest sha1Result = hmacSha1.convert(bytes);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [

//           Center(child: Text("Hello")),
//         ],
//       ),
//     );
//   }
// }
