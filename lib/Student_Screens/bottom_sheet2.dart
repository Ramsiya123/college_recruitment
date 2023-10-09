
import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';


class BTM_SHEET extends StatefulWidget {
  @override
  State<BTM_SHEET> createState() => _BTM_SHEETState();
}

class _BTM_SHEETState extends State<BTM_SHEET> {
  void _showModalBottomSheet(BuildContext context) {
     List<bool> isSelected = [false, false, false, false, false, false];
  List<String> daysOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  void toggleSelection(int index) {
    setState(() {
      isSelected[index] = !isSelected[index];
    });
  }
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only( topLeft: Radius.circular(30.0), 
             // Adjust the radius as needed
      topRight: Radius.circular(30.0),)),
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(width: 50,
              
                child: Divider(thickness: 5,)),
              Large_Text(text: "Filter",size: 16,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Small_Text(text: "Field of work",size: 15,),
                  TextButton(onPressed: (){}, child: Small_Text(text: "See all",color:customblue,))
                ],
              ),
              SizedBox(height: 30,),
                 Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                for (int i = 0; i < 3; i++)
                  GestureDetector(
                    onTap: () {
                      toggleSelection(i);
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: isSelected[i] ? Colors.purple : Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(
                          daysOfWeek[i],
                          style: TextStyle(
                            color: isSelected[i] ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                for (int i = 3; i < 6; i++)
                  GestureDetector(
                    onTap: () {
                      toggleSelection(i);
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        color: isSelected[i] ? Colors.purple : Colors.grey,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Center(
                        child: Text(
                          daysOfWeek[i],
                          style: TextStyle(
                            color: isSelected[i] ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
















             
                  
             
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:CustomElevatedButton(text: "Next",callback: (){_showModalBottomSheet(context);},),
    );
  }
}
