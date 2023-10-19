
import 'package:college_recruitments/Boarding/loading.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {

   void initState() {
    super.initState();
    _navigatetopage();
  }

  _navigatetopage() async {
    await Future.delayed(Duration(milliseconds: 5000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ST_Welcome()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customblue,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: customblue,
      ),
    );
  }
}