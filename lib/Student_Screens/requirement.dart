
import 'package:college_recruitments/Student_Screens/job_applying.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class Rrequirement extends StatefulWidget {
  const Rrequirement({super.key});

  @override
  State<Rrequirement> createState() => _RrequirementState();
}

class _RrequirementState extends State<Rrequirement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left:30.0),
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Large_Text(text: "Requirements"),
              SizedBox(height: 20,),
              Small_Text(text: "Exceptional with communication skills and team",),
              Small_Text(text: "working skill.",),
              SizedBox(height: 20,),
              
              Small_Text(text: 'Formulate good design ideas and propose solutions',),
              Small_Text(text: "to increase product.",),
              SizedBox(height: 10,),
              Small_Text(text: "You have at least3 years of experience in a"),
              Small_Text(text: "similar role.",),
              SizedBox(height: 20,),
              Large_Text(text: "Skills Needed",size: 20,),
              SizedBox(height: 10,),
              Small_Text(text: "* Design thinking   * Problem Solving  * UX Design ",),
              SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 30,),
                  SizedBox(width: 200,
                  height: 45,
                    child: CustomElevatedButton(text: "Apply Now",buttonColor: customblue, callback: (){ _showModalBottomSheet(context);})),
                ],
              ),
              SizedBox(height: 30,)
              
            ],
          ),
        ),
      ),
   );
  }
}

    
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0), 
             // Adjust the radius as needed
      topRight: Radius.circular(30.0),
      )),
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only( topLeft: Radius.circular(30.0), 
             // Adjust the radius as needed
      topRight: Radius.circular(30.0),)),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: 50,
              
                child: Divider(thickness: 5,)),
              Text(
                'Choose method To Apply',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins', // You may need to load the Poppins font
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(width: 267,height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Apply with CV/Resume
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>JOB_apply(),));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:customblue,
                     shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Button border radius
                        ),
                  ),
                  child: Text(
                    'Apply with CV/Resume',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(width: 267,height: 40,
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
                    'Apply with Profile',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                     // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }