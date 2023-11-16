import 'dart:convert';

import 'package:college_recruitments/Authentication/login.dart';
import 'package:college_recruitments/company_screens/bottom_nav_com.dart';
import 'package:college_recruitments/company_screens/home2.dart';
import 'package:college_recruitments/company_screens/post_job3.dart';
import 'package:college_recruitments/connect.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class JOB4 extends StatefulWidget {

   var position;
  var category;
  var description;
  var jobtype;
  
  var urgent;
  var salarytype;
  var amount;
  var extra;
  var location;
  var deadline;
   JOB4({super.key,
   required this.position,
   required this.category,
    required this.description,
   required this.jobtype,

   required this.urgent,
   required this.salarytype,
   required this.amount,
   required this.extra, 
   required this.deadline, 
   required this.location,

   });

  @override
  State<JOB4> createState() => _JOB4State();
}

class _JOB4State extends State<JOB4> {
   Future<void> post_job() async {
    
   var data= {
  'position': widget.position,
  'category': widget.category,
  'dscrp': widget.description,
   'location':widget.location,
  'job_type': widget.jobtype,
  'urgent': widget.urgent,
  'salary_type': widget.salarytype,
  'amount':widget.amount,
  'extra':widget.extra,
 
  'deadline':widget.deadline,
  
};

print(data);
   final response = await http.post(Uri.parse('${Con.url}/postjob.php'), body:data);
      print(response.body);


    
      if(jsonDecode(response.body)['result']=='success'){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("registered successfully")));
                    // Navigator.push(context, Materia
                    //
                    //
                    //lPageRoute(builder: (context)=>OTP(),));
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>BOTTOM()));


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
  void initState() {
    super.initState();
   
     print('.....${widget.position}.......');
                          print('.....${widget.category}.......');
                          print('.....${widget.description}.......');
                          print('.....${widget.location}.......');
                          print('.....${widget.position}.......');
                           print('.....${widget.urgent}.......');
                            print('.....${widget.jobtype}.......');
                             print('.....${widget.deadline}.......');
                             print('.....${widget.amount}.......');
                             print('.....${widget.extra}.......');
                             print('.....${widget.salarytype}.......');




                        
  }
  Future<void> _showDeleteConfirmationDialog(BuildContext context, int index) async {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Delete Requirement"),
        content: Text("Are you sure you want to delete this requirement?"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Cancel"),
          ),
          TextButton(
            onPressed: () {
              // Delete the requirement from the list
              setState(() {
                jobRequirements.removeAt(index);
              });
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      );
    },
  );
}

  final skill_key=GlobalKey<FormState>();
  TextEditingController skillscontroller=TextEditingController();
  List<String> jobRequirements = [];

  Future<void> _showRequirementsDialog(BuildContext context) async {
    
  String requirement = ''; // Create a local variable to store the entered requirement
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text("Enter Job Requirement"),
        content: Form(
          key: skill_key,
          child: TextFormField(
              validator: (value){
                          if (value!.isEmpty) {
                  return 'Type something';
                }
                return null; // Return null if the input is valid
              
                      }, 
            controller: skillscontroller,
            onChanged: (text) {
              requirement = text; // Update the local variable with entered text
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
                if(skill_key.currentState!.validate()) {
                      print("success.................");
              setState(() {
                jobRequirements.add(requirement); // Add the requirement to the list
              });
              Navigator.of(context).pop();
              skillscontroller.clear();
            };
            },
            child: Text("Add"),
          ),
        ],
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                SizedBox(height: 40,),
                 
                 InkWell(onTap: () => Navigator.pop(context),
                   child: Container(
                     width: 27,
                     height: 27,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: AssetImage("images/arrow.png")),
                     ),
                   ),
                 ),
                 SizedBox(height: 20,),
                 
                  Large_Text(text: "Step 4/4",size: 20,),
                  SizedBox(height: 30,),
                 Row(children: [
                 
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
                   SizedBox(width: 6,),
                   Container(width:MediaQuery.of(context).size.width/5,
                  height:10 ,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: customviolet,
                  ),),
                 ],),
              SizedBox(height: 20,),
              Container(
                child: ListView.builder(
                  shrinkWrap: true,
                  controller: ScrollController(),
                itemCount: jobRequirements.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    
                    title: Row(
                      children: [
                        Icon(Icons.circle,color: Colors.green,size: 10,),SizedBox(width: 20,),
                        Text(jobRequirements[index]),
                      ],
                    ),
                    trailing: 
      IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          _showDeleteConfirmationDialog(context, index); // Pass the index of the item to delete
        },
      ),
   

                  );
                },
                ),
              ),

              // SizedBox(height: 30,),
              // Row(
              //   children: [
              //     Icon(Icons.circle,color: Colors.green,size: 10,),
              //     SizedBox(width: 10,),
              //     Expanded(child: Small_Text(text: "2-4 years experience in product design or other related fields.",size: 12,)),
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Icon(Icons.circle,color: Colors.green,size: 10,),
              //     SizedBox(width: 10,),
              //     Small_Text(text: "A Portfolio of professional UI/UX Design work For\nProduct design platforms ",size: 12,),
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [
              //     Icon(Icons.circle,color: Colors.green,size: 12,),
              //     SizedBox(width: 10,),
              //     Small_Text(text: "Strong, Creative Design and Communication Skills",size: 12,),
              //   ],
              // ),
              // SizedBox(height: 20,),
              // Row(
              //   children: [ 
              //     Icon(Icons.circle,color: Colors.green,size: 10,),
              //     SizedBox(width: 10,),
              //     Small_Text(text: "12th Pass and Above",size: 12,),
              //   ],
              // ),
              SizedBox(height: 40,),
               Center(
                 child: SizedBox(
                  width: 165,
                  height: 43,
                   child: OutlinedButton( // Use OutlinedButton here
                        onPressed: () {
                          _showRequirementsDialog(context); 
                          // Handle Apply with Profile
                        
                        },
                        style: OutlinedButton.styleFrom( // Customize the outline button style
                          side: BorderSide(color: Colors.black), 
                          shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(10.0), // Adjust the radius as needed
                     ),
                          // Specify the border color
                        ),
                          child: Text(
                            '+ New Skills',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                             // fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                 ),
               ),
               SizedBox(height: 20,),
               Center(
                 child: SizedBox(
                  width: 163,
                  height: 43,
                  child: CustomElevatedButton(text: "Confirm Post", callback: (){
                    post_job();

                    //print('.....${widget.position}.......');
                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>HOME2 (),));
                    }),
               ),
                  
               ),
             
SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}




