import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:college_recruitments/wigetgallery/custom_textfield.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PageControllerExample(),
    );
  }
}

class PageControllerExample extends StatefulWidget {
  @override
  _PageControllerExampleState createState() => _PageControllerExampleState();
}

class _PageControllerExampleState extends State<PageControllerExample> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: PageView(
          controller: _pageController,
          onPageChanged: (page) {
            setState(() {
              currentPage = page;
            });
          },
          children: [
            JobPage(step: "Step 1/4", currentStep: currentPage, nextPage: () {
              _pageController.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
            }),
            JobPage(step: "Step 2/4", currentStep: currentPage, nextPage: () {
              _pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.ease);
            }),
            JobPage(step: "Step 3/4", currentStep: currentPage, nextPage: () {
              _pageController.animateToPage(3, duration: Duration(milliseconds: 5), curve: Curves.ease);
            }),
            FinalPage(),
            Job2Page(step: "Step 2/4", currentStep: currentPage, previousPage: () {
              _pageController.animateToPage(0, duration: Duration(milliseconds: 5), curve: Curves.ease);
            }, nextPage: () {
              _pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.ease);
            }),
            Job3Page(step: "Step 3/4", currentStep: currentPage, previousPage: () {
              _pageController.animateToPage(1, duration: Duration(milliseconds: 500), curve: Curves.ease);
            }, nextPage: () {
              _pageController.animateToPage(3, duration: Duration(milliseconds: 500), curve: Curves.ease);
            }),
            Job4Page(step: "Step 4/4", currentStep: currentPage, previousPage: () {
              _pageController.animateToPage(2, duration: Duration(milliseconds: 500), curve: Curves.ease);
            }),
          ],
        ),
      ),
    );
  }
}

class JobPage extends StatelessWidget {
  final String step;
  final int currentStep;
  final Function nextPage;

  JobPage({required this.step, required this.currentStep, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/arrow.png")),
            ),
          ),
          SizedBox(height: 20),
          Large_Text(text: step, size: 20),
          SizedBox(height: 30),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: i == currentStep ? customviolet : Colors.grey,
                  ),
                ),
              SizedBox(width: 6),
            ],
          ),
          SizedBox(height: 50),
          Large_Text(text: "Job Description", color: Colors.black, size: 20),
          SizedBox(height: 20),
          Small_Text(text: "Position", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Position", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Category", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Category", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Description(Optional)"),
          SizedBox(height: 10),
          AppTextfield(text: "Description", maxlines: 5, padding: 0),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: ElevatedButton(
              onPressed: () {
                nextPage();
              },
              child: Text("Next"),
              style: ElevatedButton.styleFrom(
                backgroundColor: customviolet,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FinalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/arrow.png")),
            ),
          ),
          SizedBox(height: 20),
          Large_Text(text: "Step 4/4", size: 20),
          SizedBox(height: 30),
          // Add your final page content here
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: ElevatedButton(
              onPressed: () {
                // Handle the submit action
              },
              child: Text("Submit"),
              style: ElevatedButton.styleFrom(
                primary: customviolet,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Job2Page extends StatelessWidget {
  final String step;
  final int currentStep;
  final Function previousPage;
  final Function nextPage;

  Job2Page({required this.step, required this.currentStep, required this.previousPage, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/arrow.png")),
            ),
          ),
          SizedBox(height: 20),
          Large_Text(text: step, size: 20),
          SizedBox(height: 30),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: i == currentStep ? customviolet : Colors.grey,
                  ),
                ),
              SizedBox(width: 6),
            ],
          ),
          SizedBox(height: 50),
          Large_Text(text: "Job Description", color: Colors.black, size: 20),
          SizedBox(height: 20),
          Small_Text(text: "Position", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Position", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Category", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Category", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Description(Optional)"),
          SizedBox(height: 10),
          AppTextfield(text: "Description", maxlines: 5, padding: 0),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    previousPage();
                  },
                  child: Text("Previous"),
                  style: ElevatedButton.styleFrom(
                    primary: customviolet,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    nextPage();
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    primary: customviolet,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Job3Page extends StatelessWidget {
  final String step;
  final int currentStep;
  final Function previousPage;
  final Function nextPage;

  Job3Page({required this.step, required this.currentStep, required this.previousPage, required this.nextPage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/arrow.png")),
            ),
          ),
          SizedBox(height: 20),
          Large_Text(text: step, size: 20),
          SizedBox(height: 30),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: i == currentStep ? customviolet : Colors.grey,
                  ),
                ),
              SizedBox(width: 6),
            ],
          ),
          SizedBox(height: 50),
          Large_Text(text: "Job Description", color: Colors.black, size: 20),
          SizedBox(height: 20),
          Small_Text(text: "Position", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Position", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Category", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Category", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Description(Optional)"),
          SizedBox(height: 10),
          AppTextfield(text: "Description", maxlines: 5, padding: 0),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    previousPage();
                  },
                  child: Text("Previous"),
                  style: ElevatedButton.styleFrom(
                    primary: customviolet,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    nextPage();
                  },
                  child: Text("Next"),
                  style: ElevatedButton.styleFrom(
                    primary: customviolet,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Job4Page extends StatelessWidget {
  final String step;
  final int currentStep;
  final Function previousPage;

  Job4Page({required this.step, required this.currentStep, required this.previousPage});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Container(
            width: 27,
            height: 27,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/arrow.png")),
            ),
          ),
          SizedBox(height: 20),
          Large_Text(text: step, size: 20),
          SizedBox(height: 30),
          Row(
            children: [
              for (int i = 0; i < 4; i++)
                Container(
                  width: MediaQuery.of(context).size.width / 5,
                  height: 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: i == currentStep ? customviolet : Colors.grey,
                  ),
                ),
              SizedBox(width: 6),
            ],
          ),
          SizedBox(height: 50),
          Large_Text(text: "Job Description", color: Colors.black, size: 20),
          SizedBox(height: 20),
          Small_Text(text: "Position", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Position", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Category", size: 14),
          SizedBox(height: 10),
          AppTextfield(text: "Select Category", padding: 0),
          SizedBox(height: 20),
          Small_Text(text: "Description(Optional)"),
          SizedBox(height: 10),
          AppTextfield(text: "Description", maxlines: 5, padding: 0),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 100, right: 100),
            child: ElevatedButton(
              onPressed: () {
                previousPage();
              },
              child: Text("Previous"),
              style: ElevatedButton.styleFrom(
                primary: customviolet,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
