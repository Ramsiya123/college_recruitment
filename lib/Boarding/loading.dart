
import 'package:college_recruitments/Authentication/student_Welcome.dart';
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
              padding: const EdgeInsets.only(top: 200,left: 20,right: 20),
              child: Center(
                child: Row(
                  children: [
                   // SizedBox(width: 30,),
                     SizedBox(width:MediaQuery.sizeOf(context).width*.42,
                     height: 43,
                     child: CustomElevatedButton(text: "Student login",width:100 , callback: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome_st(type: 'student',),)),buttonColor: customblue,)
                        
                     ),
                     SizedBox(width: 20,),
                     SizedBox(width:MediaQuery.sizeOf(context).width*.42,height: 43,
                     child: CustomElevatedButton(text: "Company login",width:100 , callback: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Welcome_st(type: 'company',),)),buttonColor: customblue,)
                        
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