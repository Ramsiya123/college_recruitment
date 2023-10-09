import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class NO_noty extends StatefulWidget {
  const NO_noty({super.key});

  @override
  State<NO_noty> createState() => _NO_notyState();
}

class _NO_notyState extends State<NO_noty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left:100.0,top: 200),
            child: Container(
              width:164 ,
              height: 160,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/notify.png"),fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:100.0,),
            child: Large_Text(text: "No notification Yet"),
          ),
          Padding(
            padding: const EdgeInsets.only(left:100.0,),
            child: Small_Text(text: "We’ll nofify you once we have \n           something for you ",color: Colors.grey,),
          ),
        ],
      ),
    );
  }
}