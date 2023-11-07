import 'package:college_recruitments/company_screens/home2.dart';
import 'package:college_recruitments/company_screens/post_job3.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class JOB4 extends StatefulWidget {

   var position;
  var category;
  var description;
  var jobtype;
  
  var urgent;
  var salarytype;
  var amount;
  var extra;
   JOB4({super.key,
   required this.position,
   required this.category,
    required this.description,
   required this.jobtype,

   required this.urgent,
   required this.salarytype,
   required this.amount,
   required this.extra, required deadline, required location,

   });

  @override
  State<JOB4> createState() => _JOB4State();
}

class _JOB4State extends State<JOB4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(height: 40,),
                 
                 InkWell(onTap: () => Navigator.pop(context),
                   child: Container(
                     width: 27,
                     height: 27,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage("images/arrow.png")),
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 
                  Large_Text(text: "Step 4/4",size: 20,),
                  SizedBox(height: 30,),
                 Row(children: [
                 
                  SizedBox(width: 6,),
                   Container(width:MediaQuery.of(context).size.width/5,
                  height:10 ,
                  decoration: BoxDecoration(
                     border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20),
                   // color: customviolet,
                  ),),
                   SizedBox(width: 6,),
                   Container(width:MediaQuery.of(context).size.width/5,
                  height:10 ,
                  decoration: BoxDecoration(
                     border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20),
                   // color: customviolet,
                  ),),
                 
                   SizedBox(width: 6,),
                   Container(width:MediaQuery.of(context).size.width/5,
                  height:10 ,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(20),
                    //color: customviolet,
                  ),),
                   SizedBox(width: 6,),
                   Container(width:MediaQuery.of(context).size.width/5,
                  height:10 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: customviolet,
                  ),),
                 ],),
              SizedBox(height: 20,),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.circle,color: Colors.green,size: 10,),
                  SizedBox(width: 10,),
                  Expanded(child: Small_Text(text: "2-4 years experience in product design or other related fields.",size: 12,)),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.circle,color: Colors.green,size: 10,),
                  SizedBox(width: 10,),
                  Small_Text(text: "A Portfolio of professional UI/UX Design work For\nProduct design platforms ",size: 12,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.circle,color: Colors.green,size: 12,),
                  SizedBox(width: 10,),
                  Small_Text(text: "Strong, Creative Design and Communication Skills",size: 12,),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [ 
                  Icon(Icons.circle,color: Colors.green,size: 10,),
                  SizedBox(width: 10,),
                  Small_Text(text: "12th Pass and Above",size: 12,),
                ],
              ),
              SizedBox(height: 40,),
               Center(
                 child: SizedBox(
                  width: 165,
                  height: 43,
                   child: OutlinedButton( // Use OutlinedButton here
                        onPressed: () {
                          
                          // Handle Apply with Profile
                        
                        },
                        style: OutlinedButton.styleFrom( // Customize the outline button style
                          side: BorderSide(color: Colors.black), 
                          shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                     ),
                          // Specify the border color
                        ),
                          child: Text(
                            '+ New Skills',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                             // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                 ),
               ),
               SizedBox(height: 80,),
               Center(
                 child: SizedBox(
                  width: 163,
                  height: 43,
                  child: CustomElevatedButton(text: "Confirm Post", callback: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HOME2 (),));}),
               ),
                  
               )
            ],
          ),
        ),
      ),
    );
  }
}