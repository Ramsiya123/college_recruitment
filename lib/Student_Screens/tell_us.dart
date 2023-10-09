import 'package:college_recruitments/Student_Screens/student_bottom.dart';
import 'package:college_recruitments/Student_Screens/sure.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';

class Tell_Us extends StatefulWidget {
  const Tell_Us({super.key});

  @override
  State<Tell_Us> createState() => _Tell_UsState();
}

class _Tell_UsState extends State<Tell_Us> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0,),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
             
                Row(
                  children: [
                    Large_Text(text: "Tell us About  \n Yourself",size: 24,),
                  ],
                ),
                SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal:10.0),
                   child: Row(
                                 children: [
                    Expanded(
                      child: AppTextfield(text: "age",padding: 0,),
                    ),
                    SizedBox(width: 5,),
                     // Add some spacing between the text fields
                    Expanded(
                      child: AppTextfield(text: "name",padding: 0,),
                    ),
                                 ],
                               ),
                 ),
              AppTextfield(
                text: "Where do you live?",
              ),
              AppTextfield(
                text: "Experience",
              ),
              AppTextfield(
                text: "Qualification",
              ),
              AppTextfield(
                text: "Skills",
              ),
              AppTextfield(
                text: "Pincode",
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: CustomElevatedButton(
                  text: "Proceed",
                  callback: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CenteredContainerPage(),
                        ));
                  },
                  buttonColor: customblue,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ST_BOTTOM(),));
                },
                child: Text(
                  "Skip for Now",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
