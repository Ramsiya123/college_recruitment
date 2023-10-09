import 'package:college_recruitments/Student_Screens/loading.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customblue,
      body: InkWell(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>ST_Welcome(),));},
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: customblue,
        ),
      ),
    );
  }
}