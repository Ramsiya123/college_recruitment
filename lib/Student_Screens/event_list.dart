import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class EVENT_LIST extends StatefulWidget {
  const EVENT_LIST({super.key});

  @override
  State<EVENT_LIST> createState() => _EVENT_LISTState();
}

class _EVENT_LISTState extends State<EVENT_LIST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[100] ,
      body:ListView.builder(
  itemCount: 4,
  itemBuilder: (context, index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 327,
        height: 112,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child:Padding(
          padding: const EdgeInsets.only(top:10.0,left: 10),
          child: Row(
            children: [
              Column(
                children: [
                  Container(child: Image.asset("images/ladyface.png",width: 79,height: 92,)),
                      
                ],
              ),
              SizedBox(width: 20,),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                Small_Text(
                  text: "1st May- Sat -2:00 PM",
                  color: Colors.blue,
                  size: 13,
                ),
                Large_Text(
                  text: "Google Career event",
                  size: 18,
                ),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.grey, size: 16),
                    Small_Text(
                      text: 'Trivandrum • Kerala',
                      color: Colors.grey,
                      size: 13,
                    ),
                  ],
                ),
              ],
            ),
            ],
        
          ),
        ),
      ),
    );
  },
)
,
    );
  }
}