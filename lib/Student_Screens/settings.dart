import 'package:college_recruitments/Student_Screens/notification_page.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class SETTINGS extends StatefulWidget {
  const SETTINGS({super.key});

  @override
  State<SETTINGS> createState() => _SETTINGSState();
}

class _SETTINGSState extends State<SETTINGS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      body: Padding(
        padding: const EdgeInsets.only(left:20.0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:88.0),
                child: Large_Text(text: "Settings",size: 30,),
              ),
              Padding(
                padding: const EdgeInsets.only(top:70.0),
                child: Small_Text(text: "ACCOUNT",size: 15,color: Colors.grey),
              ),
              SizedBox(height: 20,),
              Container(width:MediaQuery.of(context).size.width,height: 1, color: Colors.grey[400],),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset("images/userprofile.png",width: 51,height: 50,),SizedBox(width: 10,),
                  Column(
                    children: [
                      Large_Text(text: "Arjun Das",size: 20,),
                      Small_Text(text: "arjundas123@gmail.com",size: 12,color: Colors.grey,),
                    ],
                  ),
                ],
              ),
               
              SizedBox(height: 20,),
             
                Container(width:MediaQuery.of(context).size.width,height: 1,
                 color: Colors.grey[400],),
                 SizedBox(height: 40,),
                 Small_Text(text: "GENERAL",color: Colors.grey,size: 16,),
                 SizedBox(height: 20,),
              InkWell(
                onTap: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>NotificationPage(),));},
                child: ListTile(
                  leading:Image.asset("images/bell.png",width: 25,height: 28,) ,
                  title: Large_Text(text: "Notifications",size: 16,),
                  trailing: Container(
                    width: 25,height: 28,
                    child: Image.asset("images/crossmark.png",)),
                ),
              ),SizedBox(height: 10,),
               Container(width:MediaQuery.of(context).size.width,height: 1,
                 color: Colors.grey[400],),
                 SizedBox(height: 10,),
                  //SizedBox(height: 20,),
              ListTile(
                leading:Image.asset("images/bell.png",width: 25,height: 28,) ,
                title: Large_Text(text: "Notifications",size: 16,),
                trailing: Container(
                  width: 25,height: 28,
                  child: Image.asset("images/crossmark.png",)),
              ),SizedBox(height: 10,),
               Container(width:MediaQuery.of(context).size.width,height: 1,
                 color: Colors.grey[400],),
                 SizedBox(height: 10,),
                 // SizedBox(height: 20,),
              ListTile(
                leading:Image.asset("images/bell.png",width: 25,height: 28,) ,
                title: Large_Text(text: "Notifications",size: 16,),
                trailing: Container(
                  width: 25,height: 28,
                  child: Image.asset("images/crossmark.png",)),
              ),SizedBox(height: 10,),
               Container(width:MediaQuery.of(context).size.width,height: 1,
                 color: Colors.grey[400],),
                 SizedBox(height: 10,),
                 // SizedBox(height: 20,),
              ListTile(
                leading:Image.asset("images/bell.png",width: 25,height: 28,) ,
                title: Large_Text(text: "Notifications",size: 16,),
                trailing: Container(
                  width: 25,height: 28,
                  child: Image.asset("images/crossmark.png",)),
              ),SizedBox(height: 10,),
               Container(width:MediaQuery.of(context).size.width,height: 1,
                 color: Colors.grey[400],),
                 SizedBox(height: 10,),
        
             
              
            ],
          ),
        ),
      ),
    );
  }
}