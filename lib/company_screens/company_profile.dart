import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class COMPANY_PROFILE extends StatefulWidget {
  const COMPANY_PROFILE({super.key});

  @override
  State<COMPANY_PROFILE> createState() => _COMPANY_PROFILEState();
}

class _COMPANY_PROFILEState extends State<COMPANY_PROFILE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 97,),
          Column(
            children: [
               Image.asset("images/userprofile.png",width:134,height: 132,),SizedBox(width: 30,),
               Large_Text(text: "Google",size: 24,),
               Small_Text(text: "example@google.com",size: 14,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(38.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              SizedBox(
                width: 136,
                height: 49,
                child: CustomElevatedButton(text: "Show Profile", callback: (){},buttonColor: customviolet,)),
                SizedBox(width: 136,height: 49,
                  child: OutlinedButton( // Use OutlinedButton here
                  onPressed: () {
                    // Handle Apply with Profile
                    Navigator.pop(context);
                  },
                  style: OutlinedButton.styleFrom( // Customize the outline button style
                    side: BorderSide(color: Colors.black), 
                    shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
              ),
                    // Specify the border color
                  ),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                       // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
            ],),
          ),
          Expanded(child: ListView.builder(
            itemCount: 3,
            itemBuilder:(context,index){
              return Padding(
                padding: const EdgeInsets.only(left:28.0,right: 28,top: 20),
                child: Container(
                  width: 339,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                  ),
                  child: ListTile(
                    leading:Padding(
                      padding: const EdgeInsets.only(left:0.0,top: 4,bottom: 3,),
                      child: Container(
                        width: 43,
                        height: 43,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.purple[50],
                        ),
                        child: Icon(Icons.notifications_none_outlined,color: customviolet,size: 19,),
                      ),
                    ),
                    title: Large_Text(text: "Notifications",size: 12,),
                    trailing:Container(
                         width: 20, // Adjust the size as needed
  height: 20,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color:customviolet,
      width: 2, // Adjust the border width as needed
    ),),
                        child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue[700],size: 12,)), 
                  ),
                ),
              );
            }))
        ],
      ),
    );
  }
}