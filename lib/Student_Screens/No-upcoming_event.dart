import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:flutter/material.dart';

class UP_Event extends StatefulWidget {
  const UP_Event({super.key});

  @override
  State<UP_Event> createState() => _UP_EventState();
}

class _UP_EventState extends State<UP_Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:31.0),
                child: Container(
                  width: 27,height: 27,
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage("images/arrow.png")) 
              ),
                ),
              ),
              SizedBox(width: 100,),
              Large_Text(text: "Events",size: 20,),
            ],
          ),
          SizedBox(height: 200,),
           Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 197,height: 213,
              decoration: BoxDecoration(
                image:DecorationImage(image: AssetImage("images/no upcoming event.png"),fit: BoxFit.cover) 
              ),
                ),
              ),
        ],
      ),
    );
  }
}