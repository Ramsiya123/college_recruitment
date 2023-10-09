import 'package:college_recruitments/Student_Screens/otp_verification.dart';
import 'package:college_recruitments/connect.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart';


class Sign_Up extends StatefulWidget {
  const Sign_Up({super.key});

  @override
  State<Sign_Up> createState() => _Sign_UpState();
}

class _Sign_UpState extends State<Sign_Up> {
  TextEditingController  fnamecontroller=TextEditingController();
  TextEditingController  lnamecontroller=TextEditingController();
  TextEditingController  emailcontroller=TextEditingController();
  TextEditingController  agecontroller=TextEditingController();
  TextEditingController  dobcontroller=TextEditingController();
  TextEditingController  phonecontroller=TextEditingController();
  TextEditingController  passwordcontroller=TextEditingController();

register()async{
 var data={
  "fname":fnamecontroller.text,
  "lname": lnamecontroller.text,
  "email":emailcontroller.text,
  "age":agecontroller.text,
  "dob":dobcontroller.text,
  "phone":phonecontroller.text,
  "password":passwordcontroller.text,



  };
 var response= await post(Uri.parse('${Con.url}register.php'),body:data);
 print(response.body);


}


  


  bool is_checked=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: Padding(
      padding: const EdgeInsets.only(left:20.0,right: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: TextFormField(controller: fnamecontroller,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: TextFormField(
                controller: lnamecontroller,
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
              ),
            ),Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: TextFormField(
                controller: emailcontroller,
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
            ),Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: TextFormField(
                controller: passwordcontroller,
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: TextFormField(
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
              child: TextFormField(
                controller: dobcontroller,
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
                controller: phonecontroller,
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
                        child: CustomElevatedButton(text: "Proceed", callback: () { 
                           Navigator.push(context,MaterialPageRoute(builder: (context)=>OTP(),));
                //           if (is_checked) {
                //           Navigator.push(context,MaterialPageRoute(builder: (context)=>OTP(),));
                //   // Handle the case where the user agrees.
                //   // You can navigate to another screen or perform some action here.
                //   print('User agrees!');
                // } else {
                //   // Handle the case where the user doesn't agree.
                //   print('User does not agree!');
                }  ,buttonColor: customblue,)),
           SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.only(left:68.0),
             child: Row(
              children: [
                  Text("Already have an account? "),
                  InkWell(
                          onTap: (){},
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
    );
  }
}