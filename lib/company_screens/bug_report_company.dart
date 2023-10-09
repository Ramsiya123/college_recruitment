import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';

class BUG_REPORT extends StatefulWidget {
  const BUG_REPORT({super.key});

  @override
  State<BUG_REPORT> createState() => _BUG_REPORTState();
}

class _BUG_REPORTState extends State<BUG_REPORT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body: Padding(
        padding: const EdgeInsets.only(left:20.0,right: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.only(left:20.0),
               child: Container(
                  width: 27,
                  height: 27,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                      color: Colors.blue[200],
                      ),
                  child: Icon(Icons.arrow_back_ios,size: 15,color: Colors.white,)),
             ),
             SizedBox(height: 10,),
                 Padding(
                   padding: const EdgeInsets.only(left:150.0),
                   child: Image.asset("images/bug2.png",width: 100,height: 100,),
                 ),
                 AppTextfield(text: "Short Description"),
                 AppTextfield(text: "Email"),
                AppTextfield(text: "What Happened?",maxlines: 3,),
                AppTextfield(text: "What didi you expect to happen ? ",maxlines: 3,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 340,
                    height: 177,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                     border: Border.all(
                              color: Colors.grey, // Customize the border color
                              width: 1, // Adjust the border width as needed
                              
                            ),),
                            child: Column(
                              children: [
                                 SizedBox(height: 20,),
                                Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Small_Text(text: "Drag and Drop Files"),
                                    Icon(Icons.cloud_queue_outlined)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Small_Text(text: "or"),
                                 SizedBox(height: 10,),
                                 SizedBox(
                                  width: 96,
                                  height: 25,
                                  child: CustomElevatedButton(text: "Browse files", callback: (){},buttonColor: customviolet,),)
                      
                              ],
                            ),
                  ),
                ),
      
      
          ],
        ),
      ),
    );
  }
}