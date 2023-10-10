import 'package:college_recruitments/Student_Screens/student_bottom.dart';
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class CenteredContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(onTap:  (){Navigator.push(context, MaterialPageRoute(builder: (context)=> ST_BOTTOM(),));},
                  child: Image.asset("images/bluecross.png",width: 30,height: 30,)),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/4,),
            Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Center(
                    child: Container(
                      width: 270,
                      height: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 97,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                              color: Colors.grey[200],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 16),
                                Large_Text(text:
                                  'Are You Sure?',size: 16,),
                                SizedBox(height: 12),
                                Text(
                                  'You can Fill in later at the Profile\n                       Section.',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -0.078,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                              color: customblue,
                            ),
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> ST_BOTTOM(),));
                                // Handle button press
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: customblue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                              child: Text(
                                'Proceed Anyway',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -0.408,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
