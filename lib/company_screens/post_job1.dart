import 'package:college_recruitments/company_screens/home.dart';
import 'package:college_recruitments/company_screens/post_job2.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';


class JOB_1 extends StatefulWidget {
  const JOB_1({Key? key}) : super(key: key);

  @override
  State<JOB_1> createState() => _JOB_1State();
}

class _JOB_1State extends State<JOB_1> {
  var _formkey=GlobalKey<FormState>();
  TextEditingController positioncontroller=TextEditingController();
  TextEditingController categorycontroller=TextEditingController();
  TextEditingController desccontroller=TextEditingController();
   TextEditingController locationcontroller=TextEditingController();
String? selectedValue; // Initial value for the dropdown
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
String? _isselected;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 20,top: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   SizedBox(height: 30,),
                   
                   InkWell(
                    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>HOME_COMPANY(),)),
                     child: Container(
                       width: 27,
                       height: 27,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage("images/arrow.png")),
                       ),
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
                  AppTextfield(text: "Select Position",padding: 0,tcolor: Colors.grey,
                  controller: positioncontroller,
                  
                      validator: (value){
                          if (value!.isEmpty) {
                  return 'The field is not empty';
                }
                return null; // Return null if the input is valid
              
                      
                  },
                  ),
                   SizedBox(height: 20,),
                  Small_Text(text: "Category",size: 14,),
                   SizedBox(height: 10,),
                 DropdownButtonFormField<String>(
                    validator: (value) {
                      if (value == null) {
                        return 'Please select a category';
                      }
                      return null; // Return null if the selection is valid
                    },
                    borderRadius: BorderRadius.circular(20),
                    value: selectedValue,
                    items: options.map((String selectedValue) {
                      return DropdownMenuItem<String>(
                        value: selectedValue,
                        child: Text(selectedValue),
                      );
                    }).toList(),
                    onChanged: (String? newValue1) {
                      setState(() {
                        selectedValue = newValue1!;
                      });
                    },
                    decoration: InputDecoration(
                      // Optional: Add decoration for the form field
                      // labelText: 'Select a student', // Label text
                      hintText: "Select Category",
                        hintStyle:TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      
                      
                      color:Colors.black,
                    ) ,
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(10)), // Add a border
                    ),
                  ),
            
                   SizedBox(height: 20,),
                  Small_Text(text: "Description(Optional)",size: 14,),
                   SizedBox(height: 10,),
                  AppTextfield(text: "Description",maxlines: 5,padding: 0,tcolor: Colors.grey,
                  controller: desccontroller,
                    validator: (value){
                          if (value!.isEmpty) {
                  return 'The field is not empty';
                }
                return null; // Return null if the input is valid
              
                      },
                      ),
                   SizedBox(height: 10,),
                    Small_Text(text: "Job Location",size: 14,),
                    SizedBox(height: 20,),
                    AppTextfield(text: "Enter the location",padding: 0,tcolor: Colors.grey,
                    controller: locationcontroller,
                      validator: (value){
                          if (value!.isEmpty) {
                  return 'The field is not empty';
                }
                return null; // Return null if the input is valid
              
                      },),
                    SizedBox(height: 20,),
            
            
                  Center(child: CustomElevatedButton(text: "Next", callback: (){
                    if(_formkey.currentState!.validate()){
                                  print('success');
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>JOB2(
                    position: positioncontroller.text,
                    category: selectedValue.toString(),
                    description: desccontroller.text,
                    location:locationcontroller.text,
            
                  ),

                  ),
                  );};
                  },buttonColor: customviolet)),
                  SizedBox(height: 20,),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
