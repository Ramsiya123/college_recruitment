
import 'package:flutter/material.dart';

class Company_DEtails extends StatefulWidget {
  const Company_DEtails({Key? key});

  @override
  State<Company_DEtails> createState() => _Company_DEtailsState();
}

class _Company_DEtailsState extends State<Company_DEtails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Wrap your content with SingleChildScrollView
        child: Text(
          // Your long text content here
          "Apple is an American technology company founded by Steve Jobs, Steve Wozniak, and Ronald Wayne in April 1976. Incorporated in 1977, the company was one of the early manufacturers of personal computing devices with graphical user interface. Over the years, the company also forayed into other consumer electronics segments like mobile communication devices, digital music players, notebooks, and wearables. The company also develops and markets a range of related software and services, accessories, and networking solutions. Currently, the company’s chief executive officer (CEO) is Timothy Donald Cook, commonly known as Tim Cook."
          "From smart wearables to digital content streaming platforms, Apple offers a wide range of products and services within a closed ecosystem. Its products include iMac desktops, MacBook notebooks, iPhone mobile devices, iPad tablets, iPod digital multimedia devices, Apple Watch and Apple TV. The services include iOS operating system for mobile devices, macOS operating system for notebooks and desktops, iCloud online storage, tvOS operating system for Apple TV, watchOS operating system for Apple Watch, iTunes for digital content services, Apple Pay digital payment service, Apple Music for online multimedia streaming, and Apple News.",
          style: TextStyle(
            letterSpacing: 2.0,
            height: 1.5, 
            fontFamily: "Poppins",
            color: Colors.black,// Adjust line height as needed
          ),
        ),
      ),
    );
  }
}
