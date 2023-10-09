import 'package:college_recruitments/company_screens/jackCv.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';

class REcruitment extends StatefulWidget {
  const REcruitment({super.key});

  @override
  State<REcruitment> createState() => _REcruitmentState();
}

class _REcruitmentState extends State<REcruitment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("images/bigprofile.png",width: 185,height: 188,),
            Large_Text(text: "Arjun Das"),
            Small_Text(text: "Product Designer",color: Colors.grey,),
            Small_Text(text: "arjundas123@gmail.com",color: Colors.grey,),
             Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15,top: 40),
              child: AppTextfield(text: "Date of Birth",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15),
              child: AppTextfield(text: "Phone No",),
            ),
             Padding(
               padding: const EdgeInsets.only(left:15.0,right: 15),
               child: Expanded(
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                  flex: 1,
                  child: AppTextfield(text:"Age"),
                    ),
                    SizedBox(width: 3),
                    Flexible(
                  flex: 1,
                  child: AppTextfield(text: "Name"),
                    ),
                  ],
                  ),
               ),
             ),
      
            
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15),
              child: AppTextfield(text: "Experience",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15),
              child: AppTextfield(text: "Qualification",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15),
              child: AppTextfield(text: "Skills",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15),
              child: AppTextfield(text: "Pincode",),
            ),
            SizedBox(height: 30,),


             Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: Row(
                children: [
                  SizedBox(width: 30,),
                   SizedBox(width: 140,height: 43,
                   child: CustomElevatedButton(text: "View Resume",width:100 , callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Jack(),));},buttonColor: customblue,)
                      
                   ),
                   SizedBox(width: 20,),
                   SizedBox(width: 140,height: 43,
                   child: CustomElevatedButton(text: "Short Lists",width:100 , callback: ()=>null,buttonColor: customblue,)
                      
                   ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: 113,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: OutlinedButton(onPressed: (){}, child: Text("Rject",style: TextStyle(
              color: Colors.red,
             
            ),)),
          )

          ],
        ),
      ),

    );
  }
}