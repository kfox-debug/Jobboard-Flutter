import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_exam/ui/common_widgets/custom_button.dart';
import 'package:flutter_exam/ui/common_widgets/custom_textfield.dart';
import 'package:flutter_exam/ui/custom_button.dart';
import 'package:flutter_exam/ui/common_widgets/icons.dart';
import 'package:lyte_studios_flutter_ui/lyte_studios_flutter_ui.dart' as lyte;
import 'package:flutter_exam/ui/theme/input_decorations.dart';

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 220),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Container(
                          child:
                              Image.asset('assets/images/logos/logo_dark.png')),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Making ',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'matches',
                      style: TextStyle(fontSize: 21, color: Color(0xFFFF3268)),
                    ),
                    Text(
                      ' that work.',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'that work.',
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 124,
                ),
                Container(
                    alignment: Alignment.center,
                    // width: 340,
                    child: customTextField(
                      hintText: "Jouw email",
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.center,
                    // width: 340,
                    child: customTextField(
                      hintText: "Jouw email",
                    )),
                SizedBox(
                  height: 10,
                ),
                Container(
                    alignment: Alignment.center,
                    // width: 340,
                    child: customTextField(
                      hintText: "Jouw email",
                    )),
                SizedBox(
                  height: 10,
                ),
                CustomButton(buttonText: 'Account maken'),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        // Use Flexible for more control
                        child: Text(
                          'Door door te gaan ga je akkoord met onze algemene voorwaarden en onze privacy policy.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(120, 0, 0, 0),
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
