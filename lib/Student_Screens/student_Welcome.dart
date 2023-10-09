//import 'package:college_recruitments/company_screens/loginpage.dart';
// import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/Student_Screens/student_login.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class Welcome_st extends StatefulWidget {
  const Welcome_st({super.key});
  

  @override
  State<Welcome_st> createState() => _Welcome_stState();
}

class _Welcome_stState extends State<Welcome_st> {
  void navigatto(Widget classname){
Navigator.push(context, MaterialPageRoute(builder: (context)=>classname));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:136.0,left: 33),
                child: Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('images/loginpage2.png'),fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Large_Text(text: "Welcome",),
              SizedBox(height: 20,),
              Text( "Get Hired with ease using our App",style: TextStyle(fontSize: 18,
              fontFamily: "Poppins",
              ),),
              SizedBox(height: 40,),
              Small_Text(text: "Take the First step towards your ",color: Colors.grey,size: 16,),
              Small_Text(text: "dream with our app",color: Colors.grey,size: 16,),
              SizedBox(height: 70,),
              SizedBox(
                width: 300,
                height: 40,
                child: CustomElevatedButton(text:"Find your Job",buttonColor: customblue,
                 
                 callback:() =>Navigator.push(context,MaterialPageRoute(builder: (context)=>Student_login (), ),))
              ),
        
            ],
          ),
        ),
      ),
      
      //Custom_Button(text: "rt", width1: 300, callback:(() => navigatto(Secondp())),
      
    );

  }
}