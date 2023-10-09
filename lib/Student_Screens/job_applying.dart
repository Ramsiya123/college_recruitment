import 'package:college_recruitments/Student_Screens/student_bottom.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';





class JOB_apply extends StatefulWidget {
  const JOB_apply({super.key});

  @override
  State<JOB_apply> createState() => _JOB_applyState();
}

class _JOB_applyState extends State<JOB_apply> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 20),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 90,),
              Large_Text(text: "Full Name",size: 16,),SizedBox(height: 10,),
              AppTextfield(text: "Enter your full name",padding: 0,),SizedBox(height: 20,),
               Large_Text(text: "Enter E-mail",size: 16,),SizedBox(height: 10,),
              AppTextfield(text: "Enter your E-mail",padding: 0,),SizedBox(height: 20,),
               Large_Text(text: "Upload CV/Resume",size: 16,),SizedBox(height: 30,),
              Center(
                child: SizedBox(width:316 ,
                height: 199,
                  child: Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black, // Customize the border color
                          width: 1, // Adjust the border width as needed
                          
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width:150 ,
                          height:51 ,
                            child: ClipRRect(
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                        
                              child: ElevatedButton(
                                          onPressed: () {
                                            // Handle button press
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: customblue, 
                                            // Button background color
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 24,
                                                height: 24,
                                                margin: EdgeInsets.only(
                              top: 2,
                              left: 3.5,
                              bottom: 2,
                              right: 3.5 ),
                              child: Icon(
                              Icons.add,
                              size: 24,
                               ),
                                              ),
                              Text(
                                 'Upload File',
                                                   style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                                                //  lineHeight: 24,
                              letterSpacing: 0,
                                                //  textAlign: TextAlign.left,
                                                ),
                                              ),
                                            ],
                                          ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Large_Text(text: "Supported",size: 16,),
                    SizedBox(width: 10),
                    InkWell(onTap: (){},
                      child:Small_Text(text: "(jpg) (png) (svg)",color: Colors.blue,),
                    ),
                  ],
                          ),
                        ],
                      ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              
              Large_Text(text: "Description (Option)",size: 16,),
              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 316,
                  height: 134,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                  
                  maxLines: 10, // Allows multiple lines
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    
                    border: OutlineInputBorder(),
                  ),
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.5, // Adjust line height as needed
                  ),
                  maxLength: 500, // Optionally limit the number of characters
                ),
                ),
              ),
              Center(child: CustomElevatedButton(text: "Submit Now", callback: (){_showCongratulationsDialog(context);},buttonColor: customblue,)),
        
            ],
          ),
        ),
        
      ),
    );
  }
}


 



void _showCongratulationsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0), // Set border radius
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'images/cograts.png', // Replace with the actual image path
              width: 85,
              height: 83,
            ),
            SizedBox(height: 24),
            Text(
              'Congrats',
              style: TextStyle(
                color: customviolet, // Set text color
                fontFamily: 'Poppins',
                fontSize: 20,
                fontWeight: FontWeight.w700,
                //lineHeight: 30,
                letterSpacing: 0,
                // textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Your Application has been \n    submitted successfully',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 15,
                fontWeight: FontWeight.w700,
                //lineHeight: 20,
                letterSpacing: 0,
                //textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 46,
              width: 230,
              child: ElevatedButton(
                onPressed: () {
                 Navigator.push(context,MaterialPageRoute(builder:(context)=> ST_BOTTOM(),));
                  // Handle Go Home button press
                },
                style: ElevatedButton.styleFrom(
                  primary: customblue, // Sbet button background color
                  padding: EdgeInsets.symmetric(vertical: 11, horizontal: 76), // Set padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Set button border radius
                  ),
                ),
                child: Text(
                  'Go Home',
                  style: TextStyle(
                    color: Colors.white, // Set button text color
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 43,
              width: 230,
              child: OutlinedButton(
                onPressed: () {
                  // Handle See Application button press
                },
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 11, horizontal: 54), // Set padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Set button border radius
                    side: BorderSide(color:Colors.black, width: 1), // Set border
                  ),
                ),
                child: Text(
                  'See Application',
                  style: TextStyle(
                    color: Colors.black, // Set button text color
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
