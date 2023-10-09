
import 'package:college_recruitments/Student_Screens/event_list.dart';

import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:flutter/material.dart';

class MyTabBarPage extends StatefulWidget {
  @override
  State<MyTabBarPage> createState() => _MyTabBarPageState();
}

class _MyTabBarPageState extends State<MyTabBarPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          SizedBox(height: 30,),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 31.0),
                child: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/arrow.png")),
                  ),
                ),
              ),
              SizedBox(width: 100,),
              Large_Text(text: "Events", size: 20,),
            ],
          ),
          SizedBox(height: 30,),
          Center(
            child: Container(
              width: 330,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey[300], // Adjust the color as needed
              ),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white, // Adjust the color as needed
                ),
                tabs: [
                  Tab(text: "UPCOMING"),
                  Tab(text: 'PAST EVENTS'),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20),
              child: TabBarView(
                controller: _tabController,
                children: [
                  EVENT_LIST(),
                  EVENT_LIST(),
                  
                  // Add your TabBarView content here
                  // For example, you can add widgets for "Places" and "Inspirations"
                  // TabBarView(children: [YourPlacesWidget(), YourInspirationsWidget()]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}












