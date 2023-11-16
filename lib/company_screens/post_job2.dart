import 'package:college_recruitments/company_screens/post_job1.dart';
import 'package:college_recruitments/company_screens/post_job3.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JOB2 extends StatefulWidget {
  var position;
  var category;
  var description;
  var location;
  JOB2({Key? key,
   required this.position,
   required this.category,
    required this.description,
    required this.location,})
      : super(key: key);

  @override
  State<JOB2> createState() => _JOB2State();
}

class _JOB2State extends State<JOB2> {
  final _formKey=GlobalKey<FormState>();
  var dateController = TextEditingController();
  var selectedDate=DateTime.now();

  bool is_on = false;
  int selectedRadio = 0;
  int selectedDayIndex = -1;

  void setSelectedRadio(int value) {
    setState(() {
      selectedRadio = value;
    });
  }

  void selectDay(int index) {
    setState(() {
      if (selectedDayIndex == index) {
        // If the same day is tapped again, deselect it.
        selectedDayIndex = -1;
      } else {
        selectedDayIndex = index;
      }
    });
  }

  List<bool> isSelected = [false, false, false, false, false, false, false];
  List<String> daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      // initialDatePickerMode: DatePickerMode.day,
      firstDate: DateTime(2023),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked!= selectedDate) {
      print('picked');

      setState(() {
        //selectedDate = picked;
         String formatedDate=DateFormat.yMd().format(picked);
        dateController.text =formatedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => JOB_1())),
                child: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("images/arrow.png")),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Large_Text(text: "Step 2/4", size: 20),
              SizedBox(height: 30),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: 10,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: 10,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: customviolet,
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: 10,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: 10,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Large_Text(text: "Job type", size: 17),
              SizedBox(height: 20),
              RadioListTile(
                activeColor: customviolet,
                title: Text('Part Time'),
                value: 1,
                groupValue: selectedRadio,
                
                onChanged: (value) {
                  setSelectedRadio(1);
                },
              ),
              RadioListTile(
                
                activeColor: customviolet,
                title: Text('Full Time'),
                value: 2,
                groupValue: selectedRadio,
                onChanged: (value) {
                  setSelectedRadio(2);
                },
              ),
              SizedBox(height: 20),
                Small_Text(text: "Dead Line",size: 14,),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    
                    onTap: () {
                      selectDate(context);
                      
                    },
                    controller: dateController,
                     decoration: InputDecoration(hintStyle:TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    
                    color: Colors.black,
                  ) ,
                          
                          hintText: "DD/MM/YY",
                          
                          border: OutlineInputBorder(borderSide: BorderSide(width: 5),
                            borderRadius: BorderRadius.circular(10)),
                         ), 
                         
                             validator: (value){
                          if (value!.isEmpty) {
                  return 'The field is not empty';
                }
                return null; // Return null if the input is valid
              
                      
                         },
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Small_Text(text: "Immediate Start", size: 16, bold: FontWeight.w400),
                  Switch(
                    activeColor: customviolet,
                    value: is_on,
                    onChanged: (bool? newValue) {
                      setState(() {
                        is_on = newValue ?? false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 100),
              Center(
                child: CustomElevatedButton(
                  text: "Next",
                  callback: () {
                    // ignore: unnecessary_null_comparison
                    if (selectedRadio == null) {
                  // Display a validation message
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please select a job type'),
                    ),
                  );
                } else {
                  // Form is valid, handle the submission
                  // Your form submission logic here
                     if(_formKey.currentState!.validate()){
                                  print('success');
                                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Tab_JOB(
                          position: widget.position,
                          category: widget.category,
                          description: widget.description,
                          jobtype: selectedRadio.toString(),
                          //workdays: selectedDayIndex.toString(),
                          urgent: is_on,
                          deadline:dateController.text,
                          location: widget.location,

                        ),
                      ),
                    );
                  };
                  };


                }
                    
                ),
              ),
              SizedBox(height: 90),
            ],
          ),
        ),
      ),
    );
  }
}
