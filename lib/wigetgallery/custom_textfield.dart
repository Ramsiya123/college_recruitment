//import 'package:college_recruitments/wigetgallery/app_small_text.dart';


import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class AppTextfield extends StatelessWidget {
  String text;
  double padding;
  int maxlines;
  Color tcolor;
 final TextEditingController? controller;
  final TextInputType keyboard;
  final TextInputFormatter;
 final String? Function(String?)? validator;
 final bool obscuretext;
 final Widget? suffixicon;
  final onTap;


  AppTextfield({super.key,
  required this.text,
  this.padding=10,
  this.maxlines=1, 
   this.controller,
   this.tcolor=Colors.black,
    this.keyboard = TextInputType.name,
    this.TextInputFormatter,this.validator,
    this.obscuretext=false, 
    this.onTap=null,
    this.suffixicon
     });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(padding),
      child: TextFormField(maxLines: maxlines,
      controller: controller,
      keyboardType:keyboard ,
      
      validator: validator,
      obscureText: obscuretext,
      inputFormatters: [
        
      ],
      
        decoration: InputDecoration(
          suffixIcon: suffixicon,
          hintStyle:TextStyle(
          fontFamily: "Poppins",
          fontSize: 12,
          fontWeight: FontWeight.w500,
          
          
          color: tcolor,
        ) ,
                
                hintText: text,
                
                border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                  borderRadius: BorderRadius.circular(10)),
       ), 
       onTap: onTap,
       
       ),
    );
  }
}








