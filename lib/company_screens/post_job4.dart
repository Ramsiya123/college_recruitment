import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class JOB4 extends StatefulWidget {
  const JOB4({super.key});

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
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.circle,color: Colors.green,size: 10,),
                SizedBox(width: 10,),
                Small_Text(text: "2-4 years experience in product design or other related fields.",size: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.circle,color: Colors.green,size: 10,),
                SizedBox(width: 10,),
                Small_Text(text: "A Portfolio of professional UI/UX Design work For\n            Product design platforms ",size: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.circle,color: Colors.green,size: 10,),
                SizedBox(width: 10,),
                Small_Text(text: "Strong, Creative Design and Communication Skills",size: 10,),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Icon(Icons.circle,color: Colors.green,size: 10,),
                SizedBox(width: 10,),
                Small_Text(text: "12th Pass and Above",size: 10,),
              ],
            ),
            SizedBox(height: 40,),
             SizedBox(
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
             SizedBox(height: 150,),
             SizedBox(
              width: 163,
              height: 43,
              child: CustomElevatedButton(text: "Confirm Post", callback: (){},buttonColor: customviolet,))
          ],
        ),
      ),
    );
  }
}