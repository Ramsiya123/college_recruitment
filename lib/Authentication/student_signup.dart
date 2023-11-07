import 'dart:convert';

import 'package:college_recruitments/Authentication/login.dart';


import 'package:college_recruitments/connect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Sign_Up extends StatefulWidget {
  
   Sign_Up({Key? key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}
var selectedDate=DateTime(DateTime.now().year-10);
class _Sign_UpState extends State<Sign_Up> {
  RegExp indianPhoneNumberRegExp = RegExp(r'^[6-9]\d{9}$');

   final _formfield=GlobalKey<FormState>();
  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      // initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(1990),
      lastDate: DateTime(2017),
    );
    if (picked != null && picked!= selectedDate) {
      print('picked');

      setState(() {
        //selectedDate = picked;
         String formatedDate=DateFormat.yMd().format(picked);
        dobController.text =formatedDate;
      });
    }
  }

  bool isChecked = false;

  Future<void> register() async {
    
   var data= {
  'fname': fnameController.text,
  'lname': lnameController.text,
  'email': emailController.text,
  'password': passwordController.text,
  'dob': dobController.text.toString(),
  'phone': phoneController.text,
  'type':'student',
};

print(data);
   final response = await http.post(Uri.parse('${Con.url}/register_st.php'), body:data);
      print(response.body);


    
      if(jsonDecode(response.body)['result']=='success'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("registered successfully")));
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>OTP(),));
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Student_login(type: 'student',),));


      }
      else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("not registered")));
        Navigator.pop(context);

      }
      // Registration successful, handle the response.
      // You can navigate to the OTP screen here if needed.
      // Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
    } 
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: _formfield,
            child: Column(
              children: [
                  Padding(
                padding: const EdgeInsets.only(top:80.0),
                child: TextFormField(controller: fnameController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "First Name",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ),
                    validator: (value){
                        if (value!.isEmpty) {
                return 'Name is required.';
              }
              return null; // Return null if the input is valid
            
                    },    
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                  controller: lnameController,
                  //validator: ,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Last Name",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
                         validator: (value){
                        if (value!.isEmpty) {
                return 'Name is required.';
              }
              return null; // Return null if the input is valid
            
                    }, 
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
              ),Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                  controller: passwordController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Enter password",
                        
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
                //  controller: passwordController,
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
                  
                  onTap: () {
                    selectDate(context);
                    
                  },
                  controller: dobController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Date of Birth:DD/MM/YY",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: TextFormField(
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(10)
                  ],
                  controller: phoneController,
                   decoration: InputDecoration(hintStyle:TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  
                  color: Colors.black,
                ) ,
                        
                        hintText: "Phone No",
                        
                        border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                          borderRadius: BorderRadius.circular(10)),
                       ), 
                         
      validator: (value) {
      if (value!.isEmpty) {
        return 'Please enter your phone number';
      }
      if (!indianPhoneNumberRegExp.hasMatch(value)) {
        return 'Invalid Indian phone number';
      }
      return null;
    },
                ),
              ),
                // ... Your existing form fields ...
          
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 38.0),
                  child: Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? newValue) {
                          setState(() {
                            isChecked = newValue! ;
                          });
                        },
                      ),
                      Text("I Agree to the "),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "Terms and privacy policy",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                    onPressed: () {
                     if(_formfield.currentState!.validate()) {
                      print("success.................");
                      if (isChecked) {
                        print('inside login button');
                        register(
                          
                        );
                       //  Navigator.push(context, MaterialPageRoute(builder: (context)=>Student_login(type: 'student',),)); // Call the register function.
                      } else {
                        // Handle the case where the user doesn't agree.
                        print('User does not agree!');
                      }
         
                    };},
                    child: Text("Proceed"),
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 68.0),
                  child: Row(
                    children: [
                      Text("Already have an account? "),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Student_login(type: 'student',),));
                        },
                        child: Text(
                          " Login",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.blue,
                          ),
                        ),
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

