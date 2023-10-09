import 'package:college_recruitments/Student_Screens/stack_company.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';



class JOB_Listing extends StatefulWidget {
  @override
  State<JOB_Listing> createState() => _JOB_ListingState();
}

class _JOB_ListingState extends State<JOB_Listing> {
  List company=[
    {
      "img":"images/microsoftlogo.png",
      "name":"Microsoft",
    },
    {
      "img":"images/applelogo.png",
      "name":"Apple",
    },
    {
      "img":"images/facebook.png",
      "name":"Facebook"
    },
    {
      "img":"images/google.png",
      "name":"Google"
    },
    {
      "img":"images/linux.png",
      "name":"Linux",
    },
    {
      "img":"images/pinterest.png",
      "name":"Pinterest",
    },
    {
      "img":"images/twitterlogo.png",
      "name":"Twitter",
    },
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left:30.0,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 51,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(20.55, 75, 0, 0),
                    //padding: EdgeInsets.all(2.67),
                    child: Image.asset(
                      'images/userprofile.png', // Replace with your arrow image path
                      width: 32.85,
                      height: 32,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(210, 95, 0, 0),
                   // padding: EdgeInsets.all(2.67),
                    child: Image.asset(
                      'images/search.png', // Replace with your arrow image path
                      width: 19.85,
                      height: 18,
                    ),
                  ),
                ],
              ),
             Padding(
               padding: const EdgeInsets.only(top:40.0,left: 20),
               child: Large_Text(text: "Find your Dream  \n job today"),
             ),
              Container(
                padding: EdgeInsets.only(top: 50),
                width:MediaQuery.of(context).size.width,
                height: 800,
                child: ListView.builder(
                  itemCount: company.length, 
                  // Number of list tiles
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom:24.0),
                      child: InkWell(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>CStack(),));},
                        child: Card(
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          elevation: 10,
                          child: Container(
                             width: 303.93,
                                      height: 102,
                                     color:Color.fromARGB(184, 246, 247, 241),
                                          
                            child: Center(
                              child: ListTile(
                               
                                leading: Container(
                                  width: 49.28,
                                  height: 48,
                                  margin: EdgeInsets.only(left: 10.04),
                                  child: Image.asset(
                                    company[index]['img'], // Replace with your leading image path
                                    width: 49.28,
                                    height: 48,
                                  ),
                                ),
                                title: Large_Text(text:
                                  company[index]["name"],size: 20,),
                                            
                                subtitle: Small_Text(text: "Product Designer",color: Colors.grey,),
                            
                              trailing: Image.asset("images/box.png",width: 32,height: 22,),  
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                    
                  },
                 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
