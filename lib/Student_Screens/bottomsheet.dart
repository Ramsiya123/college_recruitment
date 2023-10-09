import 'package:college_recruitments/Student_Screens/job_applying.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget {
  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
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
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>JOB_apply(),));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    );
  }
}
