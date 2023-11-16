import 'package:college_recruitments/Student_Screens/home.dart';
import 'package:college_recruitments/Student_Screens/job_listing.dart';
import 'package:college_recruitments/Student_Screens/settings.dart';
import 'package:college_recruitments/Student_Screens/student_profile.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class ST_BOTTOM extends StatefulWidget {
  const ST_BOTTOM({super.key});

  @override
  State<ST_BOTTOM> createState() => _ST_BOTTOMState();
}

class _ST_BOTTOMState extends State<ST_BOTTOM> {
  int indexNum = 0;
  List _navigation = [
    S_HOME(),
    JOB_Listing(),
  // SETTINGS(),
    ST_PROFILE(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigation.elementAt(indexNum),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar( 
            selectedItemColor: customblue,
            unselectedItemColor: Colors.grey,
            currentIndex: indexNum,
            onTap: (int index) {
              setState(() {
                indexNum = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: "Home",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.image_search_sharp),
                label: "Job Listing",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Settings",
                backgroundColor: Colors.white,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.people),
                label: "Profile",
                backgroundColor: Colors.white,
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: (MediaQuery.of(context).size.width /
                    (_navigation.length * 2)) +
                (MediaQuery.of(context).size.width / _navigation.length * indexNum),
            child: Container(
              width: MediaQuery.of(context).size.width *.1,
              height: 2, // Adjust the height of the indicator as needed
              color: customblue, // Indicator color
            ),
          ),
        ],
      ),
    );
  }
}
