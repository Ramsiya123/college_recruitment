import 'package:college_recruitments/Student_Screens/settings.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:flutter/material.dart';



class NotificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:30.0,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SETTINGS(),));},
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0, 37, 0, 0),
                  padding: EdgeInsets.all(2.67),
                  child: Image.asset(
                    'images/arrow12.png', // Replace with your arrow image path
                    width: 32.85,
                    height: 32,
                  ),
                ),
              ),
             Large_Text(text: "Notifications"),
              Container(
                padding: EdgeInsets.only(top: 100),
                width:MediaQuery.of(context).size.width,
                height: 800,
                child: ListView.builder(
                  itemCount: 4, // Number of list tiles
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                         width: 343.93,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30)
                ),
                        child: ListTile(
                          
                          leading: Container(
                            width: 49.28,
                            height: 48,
                            margin: EdgeInsets.only(left: 10.04),
                            child: Image.asset(
                              'images/gmsg.png', // Replace with your leading image path
                              width: 49.28,
                              height: 48,
                            ),
                          ),
                          title: Text(
                            'Google wants to hire you',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              //height: 18,
                             // letterSpacing: 0,
                             // textAlign: TextAlign.left,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10.04),
                                child: Icon(
                                  Icons.access_time_filled_sharp,
                                  size: 12,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 2),
                                child: Text(
                                  'Just now',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    //height: 18,
                                    //letterSpacing: 0,
                                   // textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
