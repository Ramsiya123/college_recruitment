//import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '';

class AppTextfield extends StatelessWidget {
  String text;
  double padding;
  int maxlines;
 final TextEditingController? controller;
  final TextInputType keyboard;
  final TextInputFormatter;


  AppTextfield({super.key,required this.text,this.padding=10,this.maxlines=1,  this.controller, this.keyboard = TextInputType.name,this.TextInputFormatter,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(padding),
      child: TextFormField(maxLines: maxlines,
      controller: controller,
      keyboardType:keyboard ,
      inputFormatters: [
        
      ],
      
        decoration: InputDecoration(hintStyle:TextStyle(
          fontFamily: "Poppins",
          fontSize: 12,
          fontWeight: FontWeight.w500,
          
          color: Colors.grey,
        ) ,
                
                hintText: text,
                
                border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                  borderRadius: BorderRadius.circular(10)),
       ), ),
    );
  }
}








