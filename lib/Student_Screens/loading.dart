import 'package:college_recruitments/Student_Screens/student_Welcome.dart';
import 'package:college_recruitments/company_screens/welcome_page.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class ST_Welcome extends StatefulWidget {
  const ST_Welcome({super.key});

  @override
  State<ST_Welcome> createState() => _ST_WelcomeState();
}

class _ST_WelcomeState extends State<ST_Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:227,),
              child: Container(
                width: 242,
                height: 254,
                decoration: const BoxDecoration(color: Colors.white,
                  image: DecorationImage(image: AssetImage("images/loginpage.png"),
                  fit: BoxFit.cover,)
                ),
                
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Center(
                child: Row(
                  children: [
                    SizedBox(width: 30,),
                     SizedBox(width: 159,height: 43,
                     child: CustomElevatedButton(text: "Student login",width:100 , callback: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome_st(),)),buttonColor: customblue,)
                        
                     ),
                     SizedBox(width: 30,),
                     SizedBox(width: 144,height: 43,
                     child: CustomElevatedButton(text: "Company login",width:100 , callback: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome_com(),)),buttonColor: customblue,)
                        
                     ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}