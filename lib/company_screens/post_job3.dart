
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';


class Tab_JOB extends StatefulWidget {
  const Tab_JOB({super.key});

  @override
  State<Tab_JOB> createState() => _Tab_JOBState();
}


  class _Tab_JOBState extends State<Tab_JOB> with TickerProviderStateMixin {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            Large_Text(text: "Salary Rate",size: 20,),
            SizedBox(height: 20,),

             Container(
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TabBar(
                                  controller: _tabController,
                                  labelColor: customviolet,
                                  unselectedLabelColor: Colors.black,
                                  indicatorSize: TabBarIndicatorSize.label,
                                  tabs: [
                                    Tab(text: "Per month"),
                                    Tab(text: "PerYear"),
                                  ],
                                ),
                              ),
                            ),
                         
                      
                    
                    
              
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      JOB3(),
                      JOB3(),
                     
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

       






















class JOB3 extends StatefulWidget {
  const JOB3({super.key});

  @override
  State<JOB3> createState() => _JOB3State();
}

class _JOB3State extends State<JOB3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Large_Text(text: "Currency",size: 17,),
           SizedBox(height: 10,),
          AppTextfield(text: "\$",padding: 0,),
          SizedBox(height: 15,),
          Large_Text(text: "Amount",size: 17,),
           SizedBox(height: 10,),
          AppTextfield(text: "\$800-\$1600",padding: 0,),
           SizedBox(height: 15,),
           Large_Text(text: "Extras",size: 17,),
            SizedBox(height: 10,),
            AppTextfield(text: "Extrasand Additional peerks",maxlines: 4,padding: 0,)
             ,SizedBox(height: 25,),
             Padding(
               padding: const EdgeInsets.only(left:100.0,right: 100),
               child: CustomElevatedButton(text: "Next", callback: (){}),
             ),
      
          SizedBox(height: 25,),
        ],
      ) ,
    );
  }
}