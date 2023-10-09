import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';

class ST_PROFILE2 extends StatefulWidget {
  const ST_PROFILE2({super.key});

  @override
  State<ST_PROFILE2> createState() => _ST_PROFILE2State();
}

class _ST_PROFILE2State extends State<ST_PROFILE2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(width: MediaQuery.of(context).size.width,
            height: 298,
            
            decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.blue[700],
            ),
            
            child: Stack(
        children: [
          Positioned(
        top: 48,
        left: 21,
        child: Row(
          children: [
            Container(
              width: 27,
              height: 27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[200],
         ),
              child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.white,)),
              SizedBox(width: 250,),
          Container(
            width: 53,
              height: 26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                  color: Colors.blue[200],
         ),
         child: Padding(
           padding: const EdgeInsets.only(left:10.0),
           child: Small_Text(text: "Done",size: 10,color: Colors.white,),
         ),
          
          ),
          ],
        ),
          ),
          Positioned(
        top: 100,
        left: 133,
        child: Column(
          children: [
            Image.asset("images/blueprofile.png",width: 100,height: 100,),
            Large_Text(text: "Name",color: Colors.white,size: 20,)
          ],
        ),
          )
            
        ],
            ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left:10.0,right: 10),
              child: Column(
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                  flex: 1,
                  child: AppTextfield(text: "First Name"),
                    ),
                    SizedBox(width: 3),
                    Flexible(
                  flex: 1,
                  child: AppTextfield(text: "Last Name"),
                    ),
                  ],
                  ),
                  AppTextfield(text: "Email"),
                  AppTextfield(text: "Date of Birth"),
                  AppTextfield(text: "Phone No"),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Flexible(
                  flex: 1,
                  child: AppTextfield(text: "Age"),
                    ),
                    SizedBox(width: 3),
                    Flexible(
                  flex: 1,
                  child: AppTextfield(text: "Gender"),
                    ),
                    ],
                  ),
                  AppTextfield(text: "Experience"),
                  AppTextfield(text: "Qualification"),
                  AppTextfield(text: "Certification"),
                  AppTextfield(text: "Skills"),
                  SizedBox(height: 10,),
                  Large_Text(text: "Upload your Resume : ",size: 15,),
                  SizedBox(height: 10,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Image.asset("images/pdf.png",width: 31,height: 31,), SizedBox(width: 10,),
                       SizedBox(
                        width: 160,
                        height: 31,
                        child: CustomElevatedButton(text: "Select from files", callback: (){},buttonColor: customblue,)),
                      
                    ],
                  ),
                   SizedBox(height: 30,)
                ],
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}