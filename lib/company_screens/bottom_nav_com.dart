import 'package:college_recruitments/Student_Screens/settings.dart';
import 'package:college_recruitments/company_screens/company_profile.dart';

import 'package:college_recruitments/company_screens/home2.dart';
import 'package:college_recruitments/company_screens/student_list.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class BOTTOM extends StatefulWidget {
  const BOTTOM({super.key});

  @override
  State<BOTTOM> createState() => _BOTTOMState();
}

class _BOTTOMState extends State<BOTTOM> {
  int indexNum=0;
  List _navigation=[
    HOME2(),
    St_List(),
    SETTINGS(),
    COMPANY_PROFILE (),


  ]
  ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body:_navigation.elementAt(indexNum),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: customblue,
        unselectedItemColor: Colors.grey,
        currentIndex: indexNum,
        onTap: (int index) {
          setState(() {
            indexNum = index;
          });
        },
        items: [

        BottomNavigationBarItem(icon: Icon(Icons.home),label: "",
        backgroundColor: Colors.white),
        BottomNavigationBarItem(icon: Icon(Icons.image_search),label: "",
            backgroundColor: Colors.white),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "",
            backgroundColor: Colors.white),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "",
            backgroundColor: Colors.white),
      ],

      ),



    );
  }
}
