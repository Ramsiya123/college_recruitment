import 'package:flutter/material.dart';

class Large_Text extends StatelessWidget {
  String text;
  double size;
  Color color;
    Large_Text({super.key,required this.text,this.size=24,this.color=Colors.black });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0),
      child: Text(text,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: FontWeight.bold,
          fontFamily: "Poppins",
    
          
    
        ),
      ),
    );
  }
}