import 'dart:convert';


import 'package:college_recruitments/Authentication/company_signup.dart';
import 'package:college_recruitments/Authentication/student_signup.dart';
import 'package:college_recruitments/Student_Screens/student_bottom.dart';

import 'package:college_recruitments/company_screens/bottom_nav_com.dart';

import 'package:college_recruitments/connect.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class Student_login extends StatefulWidget {
  var type;
  Student_login({super.key, required this.type});

  @override
  State<Student_login> createState() => _Student_loginState();
}

class _Student_loginState extends State<Student_login> {
  final _formfield=GlobalKey<FormState>();
  bool passwordsee=false;
  //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  Future<void> register() async {
    final response = await http.post(Uri.parse('${Con.url}/login.php'), body: {
      "username": usernameController.text,
      "password": passwordController.text,
    });

    var data = json.decode(response.body);
    if (data == "Error") {
      Fluttertoast.showToast(
          msg: "This user already exist",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      Fluttertoast.showToast(
          msg: "Registration successfully",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Color.fromARGB(255, 78, 44, 42),
          textColor: Colors.white,
          fontSize: 16.0);
    }

    if (response.statusCode == 200) {
      // Login was successful. You can add your logic here.
      // For example, you can navigate to the home screen.
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ST_BOTTOM()));
    } else {
      // Login failed. Handle the error, e.g., show an error message.
      print("Login failed");
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formfield,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 74.0, left: 52),
                    child: Container(
                      width: 260,
                      height: 185,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: widget.type == 'student'
                              ? AssetImage('images/security.png')
                              : AssetImage('images/loginpage2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  AppTextfield(
                    text: "Username",
                    controller: usernameController,
                     validator: (value){
                    if(value!.isEmpty){
                      return 'enter email';
                    }
                    final emailRegex = RegExp(r'^.+@[a-zA-Z]+\.[a-zA-Z]+$').hasMatch(value);
                    if(!emailRegex){
                      return 'Enter valid email';
                    }
                     },
              
              
                  ),
                  AppTextfield(
                    text: "Password",
                    controller: passwordController,
                    obscuretext:!passwordsee, 
                    suffixicon: IconButton(icon: Icon(passwordsee
                        ?Icons.visibility:Icons.visibility_off,),
                        onPressed:(){
                        setState(() {
                          passwordsee=!passwordsee;
                        });
                        }) ,
        validator: (value) {
          if (value!.isEmpty) {
            return 'Please enter your password';
          }
          if (value.length < 8) {
            return 'Password must be at least 8 characters';
          }
          // You can add more custom validation rules here
          return null; // Return null if the input is valid
        },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  widget.type == 'student'
                      ? SizedBox(
                          width: 330,
                          height: 43,
                          child: CustomElevatedButton(
                              text: "Login",
                              buttonColor: customblue,
                              callback: () {
                                if(_formfield.currentState!.validate()){
                                  print('success');
                                
                                register();
                               
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ST_BOTTOM(),
                                    ));
                                }
                              }),
                        )
                      : SizedBox(
                          width: 330,
                          height: 43,
                          child: CustomElevatedButton(
                              text: "Login",
                              buttonColor: customviolet,
                              callback: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => BOTTOM(),
                                    ),
                                  ))),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't Have an Account? create one using",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        InkWell(
                          onTap: () {
                            widget.type == 'student'
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Sign_Up(),
                                    ))
                                : Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => COMPANY_Sign_Up(),
                                    ));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.blue,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Large_Text(
                    text: "OR",
                    size: 16,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Small_Text(
                    text: "Sign In With",
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 281,
                    height: 58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        )),
                    child: ListTile(
                      leading: Image.asset(
                        "images/google.png",
                        width: 27,
                        height: 28,
                      ),
                      title: Text(
                        "Login with Google",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 281,
                    height: 58,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey,
                        )),
                    child: ListTile(
                      leading: Image.asset(
                        "images/facebook.png",
                        width: 27,
                        height: 28,
                      ),
                      title: Text(
                        "Login with Facebook",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
