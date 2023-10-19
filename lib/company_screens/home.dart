
import 'package:college_recruitments/company_screens/company_profile.dart';
import 'package:college_recruitments/company_screens/post_job1.dart';

import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class HOME_COMPANY extends StatefulWidget {
  const HOME_COMPANY({super.key});

  @override
  State<HOME_COMPANY> createState() => _HOME_COMPANYState();
}

class _HOME_COMPANYState extends State<HOME_COMPANY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body:SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 78,),
            Padding(
              padding: const EdgeInsets.only(left:28.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: (){
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>COMPANY_PROFILE(),));
                    },
                    child: Image.asset("images/userprofile.png",width:40 ,height: 40,)),SizedBox(width: 30,),
                                     Column(
                                      children: [
                                        Large_Text(text: "Hello",size: 16,),
                                        Large_Text(text: "Google",size: 16,),
                                      ],
                                    ),
                                   
                            
                ],
              ),
            ),
            Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:4.0,top: 100),
                    child: Image.asset("images/bigbox.png",width: 205,height: 200,),
                  ),
                  Large_Text(text: "Post a Job and Hire",size: 20,),
                  Small_Text(text: "When you Post a Job, You can edit and Promote",size: 12,color: Colors.grey,),
                  SizedBox(height: 50,),
                  SizedBox(
                    width:268 ,
                    height: 43,
                    child: CustomElevatedButton(text: "Post a Job", callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>JOB_1(),));},buttonColor: customviolet,))
                ],
              ),
            ),
            SizedBox(height: 50,)
      
          ],
        ),
      ),
    );
  }
}