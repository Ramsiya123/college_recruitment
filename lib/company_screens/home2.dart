import 'dart:convert';

import 'package:college_recruitments/Shared_preference/sp-login.dart';
import 'package:college_recruitments/company_screens/company_profile.dart';
import 'package:college_recruitments/company_screens/home.dart';
import 'package:college_recruitments/company_screens/jobdisplay.dart';
import 'package:college_recruitments/connect.dart';

import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HOME2 extends StatefulWidget {
  var lid;

  HOME2({super.key, required this.lid});

  @override
  State<HOME2> createState() => _HOME2State();
}

class _HOME2State extends State<HOME2> {
  int flag = 0;
  List<dynamic> jobData = []; // List to store job data

  var response;
  Future<void> _refresh() async {
    await Future.delayed(Duration(seconds: 1));
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    print('inside setting screen  ${widget.lid}');
    // Call viewjob in initState to fetch data when the widget is created
    viewjob();
  }

  Future<void> viewjob() async {
    var data = {
      'company_id': widget.lid,
    };

    print(data);
    response = await http.post(Uri.parse('${Con.url}/viewjob.php'), body: data);
    var jsonResponse = json.decode(response.body); // Parse JSON data

    print(response.body);
    if (jsonResponse[0]['result'] == 'Success') {
      setState(() {
        jobData = jsonResponse; // Update jobData with the received data
        flag = 1;
      });
    } else {
      setState(() {
        flag = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder(
        future: viewjob(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('ERROR: ${snapshot.error}');
          }
          if (!snapshot.hasData || snapshot.data.length == 0) {
            print('no data');
          }
          return flag == 1
              ? RefreshIndicator(
                  onRefresh: _refresh,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 78),
                        Padding(
                          padding: const EdgeInsets.only(left: 28.0),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => COMPANY_PROFILE(),));
                                },
                                child: Image.asset("images/userprofile.png", width: 40, height: 40),
                              ),
                              SizedBox(width: 30),
                              Column(
                                children: [
                                  Large_Text(text: "Hello", size: 16),
                                  Large_Text(text: "Google", size: 16),
                                ],
                              ),
                              SizedBox(width: 90),
                              SizedBox(
                                width: 124,
                                height: 43,
                                child: CustomElevatedButton(
                                  text: "Post a Job",
                                  callback: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => HOME_COMPANY(),));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 50),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: jobData.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                // Navigate to another page to display job details
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => JobDetailsPage(jobData[index]),
                                  ),
                                );
                              },
                              child: Padding(
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
                                      leading: Image.asset("images/microsoftlogo.png", width: 55, height: 50),
                                      title: Large_Text(text: "${jobData[index]['post']}", size: 20),
                                      subtitle: Small_Text(text: "${jobData[index]['dept']}", size: 13),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : CircularProgressIndicator();
        },
      ),
    );
  }
}
