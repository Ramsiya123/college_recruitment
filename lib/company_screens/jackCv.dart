import 'package:college_recruitments/company_screens/bottom_nav_com.dart';

import 'package:flutter/material.dart';

class Jack extends StatefulWidget {
  const Jack({super.key});

  @override
  State<Jack> createState() => _JackState();
}

class _JackState extends State<Jack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:49.0,left: 308),
            child: InkWell(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> BOTTOM(),));},
              child: Image.asset("images/crossmark.png",width: 30,height:30,)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:100.0,left: 26),
            child: Container(
              width: 308,
              height: 434,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/cv.png"),fit: BoxFit.cover),
              ),
          
          
            ),
          ),
        ],
      ),
    );
  }
}