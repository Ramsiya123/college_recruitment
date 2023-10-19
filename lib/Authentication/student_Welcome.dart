//import 'package:college_recruitments/company_screens/loginpage.dart';
// import 'package:college_recruitments/wigetgallery/custom_button.dart';


import 'package:college_recruitments/Authentication/student_login.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class Welcome_st extends StatefulWidget {
  var type;
   Welcome_st({super.key,required this.type});
  

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
                    image: DecorationImage(image:widget.type=='student'?AssetImage('images/loginpage2.png'):AssetImage('images/logincompany.png'),fit: BoxFit.cover,),
                  ),
                ),
              ),
              SizedBox(height: 50,),
              Large_Text(text: "Welcome",),
              SizedBox(height: 20,),
              widget.type=='student'?
              Text( "Get Hired with ease using our App",style: TextStyle(fontSize: 18,
              fontFamily: "Poppins",
              ),):Large_Text(text: "Recruitment App",size: 18,),
              SizedBox(height: 20,),
              widget.type=='student'?
              Small_Text(text: "Take the First step towards your ",color: Colors.grey,size: 16,):Small_Text(text: "Application for easy job search and job provider",color: Colors.grey,),
              Visibility(
                visible: widget.type=='student'?true:false,
                child: Small_Text(text: "dream with our app",color: Colors.grey,size: 16,)),
              SizedBox(height: 70,),
            widget.type=='student'?
              SizedBox(
                width: 300,
                height: 40,
                child: CustomElevatedButton(text:"Find your Job",buttonColor: customblue,
                 
                 callback:() =>Navigator.push(context,MaterialPageRoute(builder: (context)=>Student_login (type: widget.type,), ),))
              ): Container(
              height: 40,
              child: CustomElevatedButton(text:"Job Provider",
               
               callback:(() => Navigator.push(context,MaterialPageRoute(builder: (context)=>Student_login (type: widget.type,), ),))),),


             
        
            ],
          ),
        ),
      ),
      
      //Custom_Button(text: "rt", width1: 300, callback:(() => navigatto(Secondp())),
      
    );

  }
}