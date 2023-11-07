
import 'dart:convert';

import 'package:college_recruitments/Authentication/login.dart';
//import 'package:college_recruitments/Student_Screens/otp_verification.dart';

import 'package:college_recruitments/connect.dart';

import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class COMPANY_Sign_Up extends StatefulWidget {
   COMPANY_Sign_Up({super.key});

  @override
  State<COMPANY_Sign_Up> createState() => _COMPANY_Sign_UpState();
}

class _COMPANY_Sign_UpState extends State<COMPANY_Sign_Up> {
   final _formfield=GlobalKey<FormState>();
  TextEditingController cnameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController addressController=TextEditingController();


  Future<void> register() async {
  try {
    var data = {
      'cname': cnameController.text,
      'email': emailController.text,
      'password': passwordController.text,
      'address': addressController.text,
      'type': 'company',
    };

    print(data);

    final response = await http.post(
      Uri.parse('${Con.url}/register_cm.php'),
      body: data);

    print(response.body);

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      if (result['result'] == "success") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Registered successfully"),
        ));
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Student_login(type: 'company'),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Registration failed"),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Failed to connect to the server"),
      ));
    }
  } catch (e) {
    print("Error: $e");
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("An error occurred during registration"),
    ));
  }
}

  bool is_checked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Padding(
      padding: const EdgeInsets.only(left:20.0,right: 20),
      child: Form(
        key:_formfield ,
        child: SingleChildScrollView(
          child: Column(
            children: [
             SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                  controller: cnameController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Company Name",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
                         validator: (value){
                            if (value!.isEmpty) {
                    return 'Name is required.';
                  }}
                ),
              ),Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                  controller: emailController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Email",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
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
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                  controller: passwordController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Enter Password",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
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
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                 // controller: passwordController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Confirm Password",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
                         validator: (value) {
          if (value!.isEmpty) {
            return 'Please confirm your password';
          }
          if (value != passwordController.text) {
            return 'Passwords do not match';
          }
          return null;
            }, 
                
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                  
                  controller: addressController,
                  maxLines: 5,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Company Address",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
                        validator: (value){
                            if (value!.isEmpty) {
                    return 'address is required.';
                  }
                  }
                       
              
                ),
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Checkbox(  value: is_checked,
                onChanged: (bool? newValue) {
                  setState(() {
                    is_checked = newValue ?? false;
                  });
                },),
                  Text("I Agree to the "),
                  InkWell(
                          onTap: (){},
                          child: Text("Terms and privacy policy",style: TextStyle(
                            decoration: TextDecoration.underline, 
                            color: Colors.blue,
                          ),),
                        ),
                        
                ],
              ),
              SizedBox(height: 30,),
               SizedBox(width: 300,
                          child: CustomElevatedButton(text: "Create Account", callback: () { 
                            if(_formfield.currentState!.validate()) {
                        print("success.................");
                        if (is_checked) {
                          print('inside login button');
                          register(
                            
                          );}
                           //  Navigator.push(context,MaterialPageRoute(builder: (context)=>Student_login(type: 'company',),));
                            
                  }  buttonColor: customviolet;
                  }
                  ),
                  ),
             SizedBox(height: 30,),
             Padding(
               padding: const EdgeInsets.only(left:68.0),
               child: Row(
                children: [
                    Text("Already have an account? "),
                    InkWell(
                            onTap: (){
                               Navigator.push(context,MaterialPageRoute(builder: (context)=>Student_login(type: 'company',),));
                            },
                            child: Text(" Login",style: TextStyle(
                              decoration: TextDecoration.underline, 
                              color: Colors.blue,
                            ),),
                          ),
                ],
               ),
             ),
              
            ],
          ),
        ),
      ),
    ),
    );
  }
}