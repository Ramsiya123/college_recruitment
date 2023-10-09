import 'package:college_recruitments/wigetgallery/custom_color.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback callback;
  final Color buttonColor;
  final double width;
  final double height;

  CustomElevatedButton({
    required this.text,
    required this.callback,
    this.buttonColor =customviolet,
    this.width = 150.0,
    this.height = 50.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: callback,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor, // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Button border radius
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Custom Elevated Button Example'),
//       ),
//       body: Center(
//         child: CustomElevatedButton(
//           text: 'Click Me',
//           onPressed: () {
//             // Your button click action here
//             print('Button Clicked');
//           },
//         ),
//       ),
//     ),
//   ));
// }
