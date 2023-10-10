import 'package:college_recruitments/Student_Screens/student_bottom.dart';
import 'package:college_recruitments/Student_Screens/student_signup.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';

class Student_login extends StatefulWidget {
  const Student_login({super.key});

  @override
  State<Student_login> createState() => _Student_loginState();
}

class _Student_loginState extends State<Student_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:74.0,left: 52),
                  child: Container(
                     width: 260,
                        height: 185,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('images/security.png'),fit: BoxFit.cover,),
                        ),
                  ),
                ),
                AppTextfield(text: "Username"),
                AppTextfield(text: "Password"),
                SizedBox(height: 20,),
                SizedBox(
                  width: 330,height: 43,
                  child: CustomElevatedButton(text: "Login",buttonColor: customblue,callback: () =>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> ST_BOTTOM(),),))),
                SizedBox(height: 20,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have an Account? create one using",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontFamily: "Poppins",
                      ),),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,MaterialPageRoute(builder: (context)=> Sign_Up(),));
                        },
                        child: Text("Sign up",style: TextStyle(
                          decoration: TextDecoration.underline, 
                          color: Colors.blue,
                        ),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Large_Text(text: "OR",size: 16,),
                SizedBox(height: 10,),
                Small_Text(text: "Sign In With",),
                SizedBox(height: 20,),
                Container(
                  width: 281,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )
                  ),
                  child: ListTile(
                    leading: Image.asset("images/google.png",width:27 ,height:28 ,),
                    title: Text( "Login with Google",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
                    
                  ),
                ),
                 SizedBox(height: 20,),
                Container(
                  width: 281,
                  height: 58,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: Colors.grey,
                    )
                  ),
                  child: ListTile(
                    leading: Image.asset("images/facebook.png",width:27 ,height:28 ,),
                    title: Text( "Login with Facebook",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),),
                    
                  ),
                ),
          
          
          
          
          
          
          
          
          
          
          
          
          
          
          SizedBox(height: 40,),
               
              ],
                         ),
          ),
                     ),
             ),
        
          
          );
      
  }
}