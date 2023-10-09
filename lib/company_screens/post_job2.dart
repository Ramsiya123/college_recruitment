import 'package:college_recruitments/Student_Screens/bottom_sheet2.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class JOB2 extends StatefulWidget {
  const JOB2({super.key});

  @override
  State<JOB2> createState() => _JOB2State();
}

class _JOB2State extends State<JOB2> {
  bool is_on=false;
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
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20,0,20,0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Large_Text(text: "JOb type",size: 17,),
            SizedBox(height: 20,),
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
            SizedBox(height: 20,),
            Large_Text(text: "Work Days",size: 15,),
            SizedBox(height: 20,),
           Row(
            children: [
              Container(
                width: 330,
                height: 27,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder:(context,index){
                    return Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: InkWell(
                         onTap: () {
                    selectDay(index);
                  },
                        child: Container(
                          width:55 ,
                          height: 26,
                          decoration: BoxDecoration(
                           // color: customviolet,
                             color: selectedDayIndex == index
                              ? customviolet
                              : Colors.transparent, 
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey,
                            )
                          ),
                          child: Center(child: Text(daysOfWeek[index], style: TextStyle(
                            color: selectedDayIndex == index
                                ? Colors.white
                                : Colors.black,
                          ),)),
                                    
                        ),
                      ),
                    );
                  } ),
              ),
            ],
           ),
        
          SizedBox(height: 20,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Small_Text(text: "Immediate Start",size: 16,bold: FontWeight.w400,),
            Switch(activeColor: customviolet,
              value: is_on, onChanged: (bool? newValue) {
                setState(() {
                  is_on = newValue ?? false;
              
                });
              },),
          ],
        ),
        SizedBox(height: 190,),
         Padding(
               padding: const EdgeInsets.only(left:100.0,right: 100),
               child: CustomElevatedButton(text: "Next", callback: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>BTM_SHEET (),));}),
             ),
              SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}