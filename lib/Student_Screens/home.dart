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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column(
            children: [
                Row(
                    children: [
                      Container(
                        width: 51,
                        height: 50,
                        margin: EdgeInsets.fromLTRB(20.55, 75, 0, 0),
                        //padding: EdgeInsets.all(2.67),
                        child: Image.asset(
                          'images/userprofile.png', // Replace with your arrow image path
                          width: 32.85,
                          height: 32,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(160, 95, 0, 0),
                       // padding: EdgeInsets.all(2.67),
                        child: Image.asset(
                          'images/bluechat.png', // Replace with your arrow image path
                          width: 29.85,
                          height: 28,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(21, 95, 0, 0),
                       // padding: EdgeInsets.all(2.67),
                        child: Image.asset(
                          'images/bell.png', // Replace with your arrow image path
                          width: 29.85,
                          height: 28,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                   Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              suffixIcon:Icon(Icons.person),
               border: OutlineInputBorder(borderSide: BorderSide(width: 1,color: Colors.grey),
                      borderRadius: BorderRadius.circular(30)),
                      filled: true,
                      fillColor: Colors.grey[200],
                      
            ),
          ),
                   ),
                   SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Large_Text(text: "Recomendation",size: 16 ),
            TextButton(onPressed: (){}, child: Small_Text(text: "View more",size: 16,color: customblue,))
          ],
        ),
                   SizedBox(height: 20,),
                    Container(
          width: 403,
          height: 220, // Set a specific height for the ListView
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(left: 10.0, right: 10),
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              elevation: 10,
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
                            "images/facebook.png",
                            width: 40,
                            height: 40,
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Large_Text(text: "Facebook", size: 16,),
                              Small_Text(text: "California, USA", size: 12,),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Icon(Icons.chat_bubble_outline_sharp,color: Colors.blue,),
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
                      child: CustomElevatedButton(text: "Apply now", callback: (){},buttonColor: customblue,))
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
            itemCount: 4,
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
                        image: DecorationImage(image: AssetImage("images/violin.png"),
                        fit: BoxFit.cover),
                         borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    
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