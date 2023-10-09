import 'package:college_recruitments/wigetgallery/app_Large_text.dart';
import 'package:college_recruitments/wigetgallery/app_small_text.dart';
import 'package:flutter/material.dart';

class LV extends StatefulWidget {
  const LV({super.key});

  @override
  State<LV> createState() => _LVState();
}

class _LVState extends State<LV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Image.asset("images/Picture4.png",
                        width: 43, height: 43.5),
                    title: Large_Text(text: "Arjun Das", size: 16),
                    subtitle: Small_Text(text: "Product Designer", size: 11),
                    trailing: Row(
                      children: [
                        Image.asset("images/logos/pdf.png",
                            width: 18, height: 18),
                        Small_Text(
                            text: "Resume",
                            size: 14,
                            color: const Color.fromARGB(255, 80, 79, 79)),
                      ],
                    ),
                  ),
                );
              },
            ),
    );
  }
}