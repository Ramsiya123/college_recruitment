
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class Applied_TABBAr extends StatefulWidget {
  const Applied_TABBAr({super.key});

  @override
  State<Applied_TABBAr> createState() => _Applied_TABBArState();
}
class _Applied_TABBArState extends State<Applied_TABBAr> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      backgroundColor:Colors.white ,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Large_Text(text: "Applied Jobs",size: 24,),
            SizedBox(height: 30,),
      
            TabBar(
                  controller: _tabController,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  
                  tabs: [
                    Tab(text: "Progressing"),
                    Tab(text: 'Upcoming'),
                    Tab(text: 'Completed'),
                  ],
                ),
                 SizedBox(height: 30,),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 20),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    APPLIED_JOb(),
                    APPLIED_JOb(),
                    
                    
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
























class APPLIED_JOb extends StatefulWidget {
  const APPLIED_JOb({super.key});

  @override
  State<APPLIED_JOb> createState() => _APPLIED_JObState();
}

class _APPLIED_JObState extends State<APPLIED_JOb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body: Column(
        children: [
           Container(
                padding: EdgeInsets.only(top: 50),
                width:MediaQuery.of(context).size.width,
                height: 600,
                child: ListView.builder(
                  itemCount: 2, 
                  // Number of list tiles
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left:10,bottom:20.0,right: 20),
                      child: Card(
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                           width: 303.93,
                                    height: 102,
                                   
                                   decoration: BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.grey,
                                    )
                                   ),
                    
                          child: Center(
                            child: ListTile(
                             
                              leading: Container(
                                width: 49.28,
                                height: 48,
                                margin: EdgeInsets.only(left: 10.04),
                                child: Image.asset(
                                  'images/facebook.png', // Replace with your leading image path
                                  width: 40,
                                  height: 40,
                                ),
                              ),
                              title: Large_Text(text:
                                'UI/ Designer',size: 16,),
                                          
                              subtitle: Small_Text(text: "Product Designer",color: Colors.grey,),
                          
                            trailing:Image.asset(
                                  'images/bell.png', // Replace with your leading image path
                                  width: 23,
                                  height: 23,
                                ),
                            ),
                          ),
                        ),
                      ),
                    );
                    
                  },
                 
                ),
              ),
        ],
      ),
    );
  }
}