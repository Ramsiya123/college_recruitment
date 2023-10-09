import 'package:college_recruitments/Student_Screens/tell_us.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:pin_code_fields/pin_code_fields.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  TextEditingController otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
       // scrollDirection: Axis.vertical,
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top:50.0,bottom: 20),
              child: Large_Text(text: "OTP Verification",size: 30,),
            ),
            Small_Text(text: "Enter the verificatio code we sent to your ",color: Colors.grey,),
            Small_Text(text: "Mobile number",color: Colors.grey,),
      
                       SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(top:100.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 50,
                    height: 50,
                      child: TextField( keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                      onChanged: (value) {
                        if(value.length==1){
FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle:TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        
                        color: Colors.black,
                      ) ,
                    
                  
                    
                    border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                      borderRadius: BorderRadius.circular(7)),
                     ),)),
                      SizedBox(width: 20,),
                      SizedBox(width: 50,
                    height: 50,
                      child: TextField( keyboardType: TextInputType.number,
                       inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                      onChanged: (value) {
                        if(value.length==1){
FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle:TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        
                        color: Colors.black,
                      ) ,
                    
                  
                    
                    border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                      borderRadius: BorderRadius.circular(7)),
                     ),)),
                     SizedBox(width: 20,),
                      SizedBox(width: 50,
                    height: 50,
                      child: TextField( keyboardType: TextInputType.number,
                       inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                      onChanged: (value) {
                        if(value.length==1){
FocusScope.of(context).nextFocus();
                        }
                      },
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle:TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        
                        color: Colors.black,
                      ) ,
                    
                  
                    
                    border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                      borderRadius: BorderRadius.circular(7)),
                     ),)),
                      SizedBox(width: 20,),
                      SizedBox(width: 50,
                    height: 50,
                      child: TextField( keyboardType: TextInputType.number,
                       inputFormatters: [
                        LengthLimitingTextInputFormatter(1)
                      ],
                     
                      textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          hintStyle:TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        
                        color: Colors.black,
                      ) ,
                    
                  
                    
                    border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                      borderRadius: BorderRadius.circular(7)),
                     ),)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:180.0),
                child: SizedBox(
                  height: 40,
                  child: CustomElevatedButton(text: "Verify", callback: (){ Navigator.push(context,MaterialPageRoute(builder: (context)=>Tell_Us(),));},buttonColor: customblue,)),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: Large_Text(text: "Didn't receive code?",size: 17,),
              ),
               InkWell(
                          onTap: (){},
                          child: Text(" Resend OTP",style: TextStyle(
                            decoration: TextDecoration.underline, 
                            color: Colors.blue,
                          ),),
                        ),
      
        ],),
      ),
      
    );
  }
}