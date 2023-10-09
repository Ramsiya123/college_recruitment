import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:flutter/material.dart';

class HOME2 extends StatefulWidget {
  const HOME2({super.key});

  @override
  State<HOME2> createState() => _HOME2State();
}

class _HOME2State extends State<HOME2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
            SizedBox(height: 78,),
          Padding(
            padding: const EdgeInsets.only(left:28.0),
            child: Row(
              children: [
                Image.asset("images/userprofile.png",width:40 ,height: 40,),SizedBox(width: 30,),
                                   Column(
                                    children: [
                                      Large_Text(text: "Hello",size: 16,),
                                      Large_Text(text: "Google",size: 16,),

                                    ],
                                  ),
                                  SizedBox(width: 90,),
                                  SizedBox(
                                    width: 124,
                                    height: 43,
                                    child: CustomElevatedButton(text: "Post a Job", callback: (){})),
                                 
                          
              ],
            ),
          ),


          SizedBox(height: 50,),
          Expanded(child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: 303,
                  height: 92,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[300],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Image.asset("images/microsoftlogo.png",width:55 ,height: 50,),
                      title: Large_Text(text: "Microsoft",size:20 ,),
                      subtitle: Small_Text(text: "Product Designer",size: 13,),
                    ),
                  ),
              
                ),
              );
            }))
        ],
      ),
    );
  }
}