import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JOB_1(),
    );
  }
}

class JOB_1 extends StatefulWidget {
  const JOB_1({Key? key}) : super(key: key);

  @override
  State<JOB_1> createState() => _JOB_1State();
}

class _JOB_1State extends State<JOB_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 20,top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 30,),
               
               Container(
                 width: 27,
                 height: 27,
                 decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage("images/arrow.png")),
                 ),
               ),
               SizedBox(height: 20,),
               
                Large_Text(text: "Step 1/4",size: 20,),
                SizedBox(height: 30,),
               Row(children: [
                Container(width:MediaQuery.of(context).size.width/5,
                height:10 ,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: customviolet,
                ),),
                SizedBox(width: 6,),
                 Container(width:MediaQuery.of(context).size.width/5,
                height:10 ,
                decoration: BoxDecoration(
                   border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                 // color: customviolet,
                ),),
                 SizedBox(width: 6,),
                 Container(width:MediaQuery.of(context).size.width/5,
                height:10 ,
                decoration: BoxDecoration(
                   border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                 // color: customviolet,
                ),),
                 SizedBox(width: 6,),
                 Container(width:MediaQuery.of(context).size.width/5,
                height:10 ,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  //color: customviolet,
                ),),
               ],),
              SizedBox(height: 50,),
              Large_Text(text: "Job Description", color: Colors.black, size: 20),
               SizedBox(height: 20,),
              Small_Text(text: "Position",size: 14,),
               SizedBox(height: 10,),
              AppTextfield(text: "Select Position",padding: 0,),
               SizedBox(height: 20,),
              Small_Text(text: "Coategory",size: 14,),
               SizedBox(height: 10,),
              AppTextfield(text: "Select Category",padding: 0,),
               SizedBox(height: 20,),
              Small_Text(text: "Description(Optional)"),
               SizedBox(height: 10,),
              AppTextfield(text: "Description",maxlines: 5,padding: 0,),
               SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only( left:100,right: 100),
                child: CustomElevatedButton(text: "Next", callback: (){},buttonColor: customviolet,),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
