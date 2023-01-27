import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
                      
                          obscureText: false,
                          // initialValue: 'Input text',
                          decoration: InputDecoration(
                            hintText: 'Search',
                            
                                 hintStyle: TextStyle(color: Colors.grey),
                                 
                                  //<-- SEE HERE

                              disabledBorder: InputBorder.none,
                              border: InputBorder.none,
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.grey
                              ),
                              fillColor: const  Color(0xfff5f5f6),
                              filled: true,
                              labelStyle: const TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(10))),
                        );
    
  }
}