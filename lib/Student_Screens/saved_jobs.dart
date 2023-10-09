import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class SAVED_JOBS extends StatefulWidget {
  const SAVED_JOBS({super.key});

  @override
  State<SAVED_JOBS> createState() => _SAVED_JOBSState();
}

class _SAVED_JOBSState extends State<SAVED_JOBS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
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
          SizedBox(height: 50,),
          Expanded(child: ListView.builder(

            itemCount: 2,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  child: Container(
                    width: 321,
                    height: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
              
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              
                           Image.asset("images/facebook.png",width:40 ,height: 40,),SizedBox(width: 30,),
                                 Column(
                                  children: [
                                    Large_Text(text: "Facebook",size: 16,),
                                    Small_Text(text: "California,USA",size: 12,),
                                  ],
                                ),
                                SizedBox(width: 100,),
                                 Icon(Icons.chat_bubble_outline_sharp),
                        
                            
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:20.0),
                          child: Row(
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Large_Text(text: "UI Designer",size: 14,),
                                  Small_Text(text: "* Senior   * Fulltime   * Remote",size: 12,color: Colors.grey,)
                                ],
                              ),
                            ],
                          ),
                        ),
                        
                      ],
                    ),
              
                  )),
              );
            })),
        ],
      ),
    );
  }
}