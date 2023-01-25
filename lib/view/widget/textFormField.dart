import 'package:flutter/material.dart';

import 'font.dart';

class textFormField extends StatelessWidget {
  final Icon? preIcon;
  final String? hintText;
  final Widget? surIcon;
  final bool ObscureText;
  var controller;
  
  textFormField({this.preIcon, this.hintText, this.surIcon, this.controller, required this.ObscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                obscureText: ObscureText,
                controller: controller,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,   
                ),  
                decoration: InputDecoration(
                  //add prefix icon
                  prefixIcon: preIcon,
                  suffixIcon: surIcon,
                  // errorText: "Error",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.grey, width: 1.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  fillColor: Colors.grey,
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontFamily: Poppins,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            );
  }
}