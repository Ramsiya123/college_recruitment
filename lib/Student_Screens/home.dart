
import 'package:college_recruitments/Student_Screens/events.dart';
import 'package:college_recruitments/model/companies.dart';
import 'package:college_recruitments/model/eventmodel.dart';

import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';



class S_HOME extends StatefulWidget {
  const S_HOME({super.key});

  @override
  State<S_HOME> createState() => _S_HOMEState();
}

class _S_HOMEState extends State<S_HOME> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 120,
        
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
                          width: 51,
                          height: 50,
                          //margin: EdgeInsets.fromLTRB(20.55, 75, 0, 0),
                          //padding: EdgeInsets.all(2.67),
                          child: Image.asset(
                            'images/userprofile.png', // Replace with your arrow image path
                            width: 32.85,
                            height: 32,
                          ),
                        ),
        ), 
        title: Large_Text(text: "Welcome",size: 20,),
        actions: [
          
                      IconButton(onPressed: (){}, icon: Icon(Icons.bookmark_border_rounded,color:Colors.blue,size: 35,)),
                       IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.blue,size: 35,)),
                    
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column(
            children: [
               
                
                   ClipRRect(
                       borderRadius: BorderRadius.circular(20),
                     child: TextField(
                       
                       decoration: InputDecoration(
                         border: InputBorder.none,
                         filled: true,
                         fillColor: Colors.grey[200],
                         
                         hintText: 'Search',
                         prefixIcon: Icon(Icons.search),
                         suffixIcon: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(
                                       'images/pageline.png', // Replace with your arrow image path
                                       width: 20,
                                       height: 20,
                                     ),
                         ),
                       
                         // border: OutlineInputBorder(),
                                
                       ),
                     ),
                   ),
                   SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Large_Text(text: "Recomendation",size: 16 ),
            TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyTabBarPage (),));
            }, child: Small_Text(text: "View more",size: 16,color: customblue,))
          ],
        ),
                   SizedBox(height: 10,),
                    Container(
          width: MediaQuery.sizeOf(context).width,
          height: 220, // Set a specific height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: company.length,
            itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(left: 10.0, right: 10),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 0.9,
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            company[index]["img"],
                            width: 30,
                            height: 30,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Large_Text(text: company[index]['name'], size: 16,),
                              Small_Text(text: company[index]['place'], size: 12,bold: FontWeight.w400,),
                            ],
                          ),
                          SizedBox(width: 25,),
                          Icon(Icons.bookmark_border_outlined,size: 25,color: Colors.blue,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Center(
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(child: Large_Text(text: "      UI Designer", size: 14,)),
                                Small_Text(text: "* Senior   * Fulltime   * Remote", size: 12, color: Colors.grey,)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 112,
                      height: 42,
                      child: CustomElevatedButton(text: "Apply now", callback: (){},buttonColor: Colors.blue,))
                  ],
                ),
              ),
            ),
          );
            },
          ),
        ),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Large_Text(text: "Events",size: 16 ),
            TextButton(onPressed: (){}, child: Small_Text(text: "View more",size: 16,color: customblue,))
          ],
        ),
        
        Container(
          width: double.infinity,
          height: 256,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: events.length,
            itemBuilder: ((context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 235,
            height: 255,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white70,
            ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10,),
                Stack(
                  children: [
                    Container(
                      width: 220,
                      height: 131,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(events[index]['img']),
                        fit: BoxFit.cover),
                         borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    Positioned(
                      left: 20,
                      top: 20,
                      child: Container(
                        width:45 ,
                        height: 45,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                     Positioned(
                      left: 100,
                      top: 20,
                      child: Container(
                        width:30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )
                    
                  ],
                ),
                Large_Text(text: "Career Guidance Workshop",size: 15,),
                Row(
                  children: [
                    Icon(Icons.location_on,color: Colors.grey,),Small_Text(text: "Trivandram,Kerala",color: Colors.grey,size: 13,),
                  ],
                ),
              ],
            ),
          ),
            ))),
        )
        
            ],
          ),
        ),
      ),
    );
  }
}