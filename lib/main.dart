//import 'package:college_recruitments/company_screens/login_page.dart';


// import 'package:college_recruitments/Student_Screens/start.dart';
// import 'package:college_recruitments/company_screens/welcome_page.dart';
//import 'package:college_recruitments/wigetgallery/custom_button.dart';
//import 'package:college_recruitments/company_screens/campus_recruitment.dart';






import 'package:college_recruitments/Boarding/start.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>null),
        ChangeNotifierProvider(create: (context)=>null),
        ChangeNotifierProvider(create: (context)=>null),
      ],
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home://LOg (),
        //S_HOME(),
        //BTM_SHEET(),
        //JOB2 (),
       // JOB4 (),
        //Tab_JOB(),
        //JOB3 (),
       // JOB_1  (),
        //BOTTOM(),
        //COMPANY_PROFILE(),
        //HOME2(),
       // HOME_COMPANY(),//Applied_TABBAr(),
        //APPLIED_JOb(),
        //SAVED_JOBS(),
        //EVENT_LIST(),
        //UP_Event(),
        //NO_noty(),
        //CStack(),
        //Company_DEtails(),
         //Rrequirement(),
        //First_Job(),
      // St_List(),
       //REcruitment(),//Jack(),
        //Sure(),
        //Tell_Us(),
        //Student_login(),
       // ST_Welcome(),//
   Start(),
        //Welcome_st(),
       //MyTabBarPage(),//BUG_REPORT(),
       // SETTINGS(),
        //ST_PROFILE2(), //JOB_Listing(),
         //CenteredContainerPage(),
        //JOB_apply(),
        // Custom_Button(text: "56", width: 100),
      ),
    );
  }
}