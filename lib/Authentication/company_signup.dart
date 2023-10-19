
import 'dart:convert';

import 'package:college_recruitments/Authentication/student_login.dart';
import 'package:college_recruitments/Student_Screens/otp_verification.dart';

import 'package:college_recruitments/connect.dart';

import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class COMPANY_Sign_Up extends StatefulWidget {
  const COMPANY_Sign_Up({super.key});

  @override
  State<COMPANY_Sign_Up> createState() => _COMPANY_Sign_UpState();
}

class _COMPANY_Sign_UpState extends State<COMPANY_Sign_Up> {
  TextEditingController cnameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController addressController=TextEditingController();


  Future<void> register() async {
    
   final response = await http.post(Uri.parse('${Con.url}/register.php'), body: {
  'cname': cnameController.text,
  
  'email': emailController.text,
  'password': passwordController.text,
  
  'address': addressController.text,
  'type':'company',
});
      print(response.body);


    
      if(jsonDecode(response.body)['result']=='success'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("registered successfully")));
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP(),));


      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("not registered")));
        Navigator.pop(context);

      }
      // Registration successful, handle the response.
      // You can navigate to the OTP screen here if needed.
      // Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
    } 

  bool is_checked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Padding(
      padding: const EdgeInsets.only(left:20.0,right: 20),
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
                    
                    hintText: "Confirm Password",
                    
                    border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                      borderRadius: BorderRadius.circular(10)),
                   ), 
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: TextField(
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
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:38.0),
            child: Row(
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
          ),
          SizedBox(height: 30,),
           SizedBox(width: 300,
                      child: CustomElevatedButton(text: "Create Account", callback: () { 
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Student_login(type: 'company',),));
              //           if (is_checked) {
              //           Navigator.push(context,MaterialPageRoute(builder: (context)=>OTP(),));
              //   // Handle the case where the user agrees.
              //   // You can navigate to another screen or perform some action here.
              //   print('User agrees!');
              // } else {
              //   // Handle the case where the user doesn't agree.
              //   print('User does not agree!');
              }  ,buttonColor: customviolet,)),
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
    );
  }
}