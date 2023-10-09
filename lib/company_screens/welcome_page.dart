 import 'package:college_recruitments/company_screens/loginpage.dart';
// import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:flutter/material.dart';

class Welcome_com extends StatefulWidget {
  const Welcome_com({super.key});
  

  @override
  State<Welcome_com> createState() => _Welcome_comState();
}

class _Welcome_comState extends State<Welcome_com> {
  void navigatto(Widget classname){
Navigator.push(context, MaterialPageRoute(builder: (context)=>classname));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:136.0,left: 33),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/logincompany.png'),fit: BoxFit.cover,),
                ),
              ),
            ),
            SizedBox(height: 104,),
            Large_Text(text: "Welcome",),
            Large_Text(text: "Recruitment App",size: 18,),
            SizedBox(height: 10,),
            Small_Text(text: "Application for easy job search and job provider",color: Colors.grey,),
            SizedBox(height: 40,),
            Container(
              height: 40,
              child: CustomElevatedButton(text:"Job Provider",
               
               callback:(() => navigatto(Company_login()) ))),

          ],
        ),
      ),
      
      //Custom_Button(text: "rt", width1: 300, callback:(() => navigatto(Secondp())),
      
    );

  }
}