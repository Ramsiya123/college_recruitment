import 'package:flutter/material.dart';

class Small_Text extends StatelessWidget {
  String text;
  Color color;
  double size;
  FontWeight bold;
  Small_Text({super.key,required this.text,this.color=Colors.black,this.size=12,this.bold=FontWeight.bold,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Text(
        text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: bold,
          fontFamily: "Poppins",
    
      ),
    
      ),
    );
  }
}















