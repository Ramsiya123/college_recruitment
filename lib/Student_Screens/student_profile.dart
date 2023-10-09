import 'package:college_recruitments/Student_Screens/student_profile22.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class ST_PROFILE extends StatefulWidget {
  const ST_PROFILE({super.key});

  @override
  State<ST_PROFILE> createState() => _ST_PROFILEState();
}

class _ST_PROFILEState extends State<ST_PROFILE> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 390,
            child: Stack(
              children: [
                Container(
                  height: 283,
                  color: Colors.blue[700],
                ),
                Positioned(
                  top: 64,
                  left: 18,
                  child: Row(
                    children: [
                      Large_Text(text: "Profile", size: 30, color: Colors.white,),
                      SizedBox(width: 220,),
                      Container(
                       width: 34, // Adjust the size as needed
  height: 34,
  decoration: BoxDecoration(
   borderRadius: BorderRadius.circular(10),
      color: Color.fromARGB(255, 198, 198, 199),
      // Adjust the border width as needed
    ),
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ST_PROFILE2(),));
                            },
                            icon: Icon(Icons.edit),iconSize: 20,
                            color: Colors.grey[200],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  left: 35,
                  right: 35,
                  top: 170,
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: 334,
                      height: 197,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                      ),
                      child: Column(
                        children: [
                        
                          SizedBox(height: 60,),
                          Large_Text(text: "Arjun Das", size: 26,),
                          Small_Text(text: "Product Designer", size: 13, color: Colors.grey,),
                          Small_Text(text: "arjundas123@gmail.com", size: 13, color: Colors.grey,),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 123,
                  top: 107,
                  child: Image.asset("images/userprofile.png", width: 139, height: 140,),
                ),
                  Positioned(left: 270,top: 200,
                            child: Small_Text(text: "ID : #0077",size: 13,color: Colors.grey,)),
              ],
            ),
          ),
         // SizedBox(height: 20,),
          Expanded( // Wrap the ListView.builder with an Expanded widget
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top:20.0,left: 20,right: 20),
                  child: Container(
                    width: 330,
                    height: 53,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                    child: ListTile(
                      leading: Icon(Icons.star, color: Colors.blue[700],),
                      title: Small_Text(text: "Personal Details"),
                      trailing: Container(
                         width: 20, // Adjust the size as needed
  height: 20,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color: Colors.blue,
      width: 2, // Adjust the border width as needed
    ),),
                        child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.blue[700],size: 12,)),
                    ),
                  ),
                );
              },
            ),
            
          ),
          SizedBox(height: 20,)
        ],
        
      ),
    );
  }
}
