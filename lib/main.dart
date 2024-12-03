import 'package:flutter/material.dart';
import 'ui/themes.dart';
import 'ui/custom_button.dart';
import 'package:flutter_exam/features/dashboard/screen/first_screen.dart';
import 'package:flutter_exam/features/dashboard/screen/doorgaan_screen.dart';
import 'package:flutter_exam/features/dashboard/screen/account_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // theme: AppTheme.lightTheme,
    home: AccountScreen(),
  ));
}

class MyButton extends StatefulWidget {
  @override
  MyButtonState createState() {
    return MyButtonState();
  }
}

class MyButtonState extends State<MyButton> {
  int counter = 0;
  List<String> displayedStrings = [
    "Hello World!",
    "Flutter Rocks!",
    "Custom Button",
    "Theme Example",
    "Keep Clicking!"
  ];
  List<String> strings = [
    "Hello World!",
    "Flutter Rocks!",
    "Custom Button",
    "Theme Example",
    "Keep Clicking!"
  ];

  // Method to handle button press and cycle through texts
  void onPressOfButton(int index) {
    setState(() {
      // Update the displayed string based on the index of the button clicked
      counter = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Theme"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. General Button
            GeneralButton(
              label: "General Button 1",
              onPressed: () {
                print("General Button 1 Pressed");
              },
            ),
            SizedBox(height: 20), // Space between buttons

            // 2. General Button with customized properties
            GeneralButton(
              width: 250,
              height: 60,
              textColor: Colors.black,
              buttonColor: Colors.yellow,
              label: "General Button 2",
              fontFamily: 'Inter',
              fontSize: 18,
              radius: 40,
              onPressed: () {
                print("General Button 2 Pressed");
              },
            ),
            SizedBox(height: 20),

            // 3. Icon-Label Button
            IconLabelButton(
              icon: Icons.thumb_up,
              label: "Icon-Label Button",
              buttonBorderColor: Colors.red,
              buttonBorderWidth: 3,
              onPressed: () {
                print("Icon-Label Button Pressed");
              },
            ),
            SizedBox(height: 20),

            // 4. Label-Icon Button
          ],
        ),
      ),
    );
  }
}
