

import 'package:college_recruitments/company_screens/post_job4.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';


class Tab_JOB extends StatefulWidget {
   var position;
  var category;
  var description;
  var jobtype;
 var deadline;
  var urgent;
  var location;
  
   Tab_JOB({super.key,
   required this.position,
   required this.category, 
   required this.description,
   required this.jobtype,
  required this.urgent,
  required this.deadline,
  required this.location});

  @override
  State<Tab_JOB> createState() => _Tab_JOBState();
}


  class _Tab_JOBState extends State<Tab_JOB> with TickerProviderStateMixin {
    final _formKey=GlobalKey<FormState>();
    TextEditingController amountcontroller=TextEditingController();
    TextEditingController extracontroller=TextEditingController();
    

  late TabController _tabController;
  int selectedRad=0;
   void setSelectedRadio(int value) {
    setState(() {
      selectedRad= value;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
   

                        
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40,),
                   
                   InkWell(onTap: ()=>Navigator.pop(context),
                     child: Container(
                       width: 27,
                       height: 27,
                       decoration: BoxDecoration(
                         image: DecorationImage(image: AssetImage("images/arrow.png")),
                       ),
                     ),
                   ),
                   SizedBox(height: 20,),
                   
                    Large_Text(text: "Step 3/4",size: 20,),
                    SizedBox(height: 30,),
                   Row(children: [
                   
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
                      //color: customviolet,
                    ),),
                   ],),
                SizedBox(height: 20,),
                Large_Text(text: "Salary Rate",size: 20,),
                SizedBox(height: 20,),
                 //SizedBox(height: 40,),
                 
                   Row(
                     children: [
                       Expanded(
                         child: RadioListTile(
                          activeColor: customviolet,
                          title: Text('Per month'),
                          value: 1,
                          groupValue: selectedRad,
                          onChanged: (value) {
                            setSelectedRadio(1);
                          },
                                     ),
                       ),
                   Expanded(
                     child: RadioListTile(
                      activeColor: customviolet,
                      title: Text('per year'),
                      value: 2,
                      groupValue: selectedRad,
                      onChanged: (value) {
                        setSelectedRadio(2);
                      },
                                 ),
                   ),
                  
                     ],
                   ),
                  
                 
              SizedBox(height: 15,),
                  Large_Text(text: "Amount",size: 17,),
                   SizedBox(height: 10,),
                  AppTextfield(text: "\$800-\$1600",padding: 0,controller: amountcontroller,
                    validator: (value){
                            if (value!.isEmpty) {
                    return 'The field is not empty';
                  }
                  return null; // Return null if the input is valid
                
                        },
                        keyboard: TextInputType.number,),
                   SizedBox(height: 15,),
                   Large_Text(text: "Extras",size: 17,),
                    SizedBox(height: 10,),
                    AppTextfield(text: "Extrasand Additional peerks",maxlines: 4,padding: 0,controller: extracontroller,
                    validator: (value){
                            if (value!.isEmpty) {
                    return 'The field is not empty';
                  }
                  return null; // Return null if the input is valid
                
                        },
                       // keyboard: TextInputType.number,
                       ),
                     SizedBox(height: 35,),
                        
              
                  Padding(
                   padding: const EdgeInsets.only(left:100.0,right: 100),
                   child: CustomElevatedButton(text: "Next", callback: (){
                    if(_formKey.currentState!.validate()){
                                  print('success');
                                 
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>JOB4(
                     position:widget.position,
              category: widget.category,
              description: widget.description,
              jobtype:widget.jobtype,
              location:widget.location,
              urgent:widget.urgent,
              salarytype: selectedRad.toString(),
              amount: amountcontroller.text,
              extra: extracontroller.text,
                  deadline:widget.deadline,
                   ),
                   )
                   );
                    }
                   }),
                 ),
            ],    
              ),
          ),
        ),
      ),
      
    );
  }
}

       






















