import 'package:college_recruitments/company_screens/campus_recruitment.dart';

import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class St_List extends StatefulWidget {
  const St_List({Key? key}) : super(key: key);

  @override
  _St_ListState createState() => _St_ListState();
}

class _St_ListState extends State<St_List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 57.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 30),
                  Image.asset("images/search.png", width: 20, height: 20),
                  SizedBox(width: 30),
                  Image.asset("images/bell.png", width: 20, height: 20),
                  SizedBox(width: 30),
                ],
              ),
            ),
            SizedBox(height: 30),
            Large_Text(text: "Recent Applicants", size: 20),
            SizedBox(height: 40),
            Container(
              padding: EdgeInsets.only(top: 0),
              width: MediaQuery.of(context).size.width,
            // height: 1700,
              child: ListView.builder(
                 shrinkWrap: true,
                 
                  physics: NeverScrollableScrollPhysics(),
                itemCount: 10,

                // Number of list tiles

                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 10, bottom: 14.0, right: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => REcruitment(),
                            ));
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 10,
                        child: Container(
                          width: 303.93,

                          height: 72,

                          //color:Colors.white,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              )),

                          child: Center(
                            child: ListTile(
                              leading: Container(
                                width: 49.28,
                                height: 48,
                                margin: EdgeInsets.only(left: 10.04),
                                child: Image.asset(
                                  'images/Picture4.png', // Replace with your leading image path

                                  width: 41.28,

                                  height: 43,
                                ),
                              ),
                              title: Large_Text(
                                text: 'Arjun Das',
                                size: 16,
                              ),
                              subtitle: Wrap(
                                children: [
                                  Small_Text(
                                    text: "Product Designer",
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Image.asset("images/pdf.png",
                                      width: 18, height: 18),
                                  Small_Text(
                                      text: "Resume",
                                      size: 14,
                                      color: const Color.fromARGB(
                                          255, 80, 79, 79)),
                                ],
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                  )),
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
    );
  }
}
