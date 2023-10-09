import 'package:college_recruitments/Student_Screens/company_details.dart';
import 'package:college_recruitments/Student_Screens/requirement.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class CStack extends StatefulWidget {
  const CStack({Key? key});

  @override
  State<CStack> createState() => _CStackState();
}

class _CStackState extends State<CStack> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 340,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 265,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/disman.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 152,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(height: 40),
                          Large_Text(text: "Product Designer", size: 20),
                          Small_Text(text: "California, USA", color: Colors.black54),
                          SizedBox(height: 30),
                          Container(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TabBar(
                                controller: _tabController,
                                labelColor: Colors.black,
                                unselectedLabelColor: Colors.grey,
                                indicatorSize: TabBarIndicatorSize.label,
                                tabs: [
                                  Tab(text: "Descriptions"),
                                  Tab(text: "Company"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 130,
                    top: 100,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("images/twitterlogo.png"),
                      ),
                    ),
                  ),
                 
                ],
                
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Rrequirement (),
                    Container(width: 200,
                      child: Company_DEtails()),
                    // Add your TabBarView content here
                    // For example, you can add widgets for "Places" and "Inspirations"
                    // TabBarView(children: [YourPlacesWidget(), YourInspirationsWidget()]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
