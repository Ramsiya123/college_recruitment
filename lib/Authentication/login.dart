import 'dart:convert';


import 'package:college_recruitments/Authentication/company_signup.dart';
import 'package:college_recruitments/Authentication/student_signup.dart';
import 'package:college_recruitments/Shared_preference/sp-login.dart';
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
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Future<void> login() async {
  final response = await http.post(Uri.parse('${Con.url}/login.php'), body: {
    "email": emailController.text,
    "password": passwordController.text,
    "type": widget.type,
  });

  if (response.statusCode == 200) {
    var data = json.decode(response.body);
    if (data['result'] == 'success') {
     var userid=data['user_data'];
     print('.............$userid...........');
     SharedPreferencesHelper.saveData(userid).then((value) => print('-------------sp saved-----------------------------')).catchError((e){print('------------sp not saved------------------------------------------');});
    Fluttertoast.showToast(
  msg: "Login Success",
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.BOTTOM,
  backgroundColor: Colors.blue, // Change the background color here
  textColor: Colors.white,
  fontSize: 16.0,
);
switch(widget.type){
  case 'student':

      // Successful login; navigate to the main screen.
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ST_BOTTOM()));
          break;
           case 'company':

      // Successful login; navigate to the main screen.
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BOTTOM()));
          break;
}
    } else {
      // Invalid email or password; show an error message to the user.
      // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      //   content: Text("Login Failed. Please check your credentials."),
      // ));
      Fluttertoast.showToast(
          msg: "Login failed",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  } else {
    // Handle HTTP request errors (e.g., network issues).
    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    //   content: Text("Error: ${response.statusCode}"),
    // ));
     Fluttertoast.showToast(
          msg: "Error: ${response.statusCode}",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
         
        
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
                    text: "Email",
                    controller: emailController,
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
                          width:MediaQuery.sizeOf(context).width*.82,
                          height: 43,
                          child: CustomElevatedButton(
                              text: "Login",
                              buttonColor: customblue,
                              callback: () {
                                if(_formfield.currentState!.validate()){
                                  print('success');
                                
                                login();
                               
                               
                                }
                              }),
                        )
                      : SizedBox(
                          width:MediaQuery.sizeOf(context).width*.82,
                          height: 43,
                          child: CustomElevatedButton(
                              text: "Login",
                              buttonColor: customviolet,
                              callback: (){
                                if(_formfield.currentState!.validate()){
                                  print('success');
                                
                                login();
                               
                                
                                }
                              }
                                  )
                                  ),
                                  
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
