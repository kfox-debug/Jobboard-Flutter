import 'package:flutter/material.dart';
import 'package:flutter_exam/ui/custom_button.dart';
import 'package:flutter_exam/ui/common_widgets/icons.dart';
import 'package:lyte_studios_flutter_ui/lyte_studios_flutter_ui.dart' as lyte;

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/background/background.png'), // Path to your image
                fit: BoxFit.cover, // This will cover the entire screen
              ),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 250),
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Center(
                      child: Container(
                          child: Image.asset(
                              'assets/images/logos/logo_light.png')),
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
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    ),
                    Text(
                      'matches',
                      style: TextStyle(fontSize: 27, color: Color(0xFFFF3268)),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'that work.',
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  LabelButton(
                    icon: '⚡',
                    width: 346,
                    radius: 27,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    textColor: Colors.black,
                    label: "Ik zoek een job",
                    buttonColor: Color(0xFFF6F6F6),
                    buttonBorderWidth: 3,
                    onPressed: () {
                      print("Icon-Label Button Pressed");
                    },
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
                // Center(
                //     child: Container(
                //   width: 40,
                //   alignment: Alignment.center,
                //   decoration: BoxDecoration(
                //       border: Border.all(color: Colors.black, width: 1.0)),
                //   child: lyte.SvgIcon(
                //     BasicIcons.appleIcon,
                //     size: 40,
                //   ),
                // )),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  LabelButton(
                    icon: '💼',
                    iconColor: Colors.brown.shade900,
                    width: 346,
                    fontSize: 18,
                    radius: 27,
                    fontFamily: 'Inter',
                    textColor: Colors.black,
                    label: "Ik zoek talent",
                    buttonColor: Color(0xFFF6F6F6),
                    buttonBorderWidth: 3,
                    onPressed: () {
                      print("Icon-Label Button Pressed");
                    },
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        // Use Flexible for more control
                        child: Text(
                          'Door door te gaan ga je akkoord met onze algemene voorwaarden en onze privacy policy.',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
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
