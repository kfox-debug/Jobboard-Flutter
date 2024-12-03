import 'package:flutter/material.dart';
import 'package:flutter_exam/features/authentication/screens/login_screen.dart';
import 'package:flutter_exam/ui/common_widgets/custom_textfield.dart';
import 'package:flutter_exam/ui/common_widgets/primary_button.dart';

class EmailLoginScreen extends StatefulWidget {
  static const String route = '${LoginScreen.route}/$location';
  static const String location = 'email';

  const EmailLoginScreen({super.key});

  @override
  State<EmailLoginScreen> createState() => _EmailLoginScreenState();
}

class _EmailLoginScreenState extends State<EmailLoginScreen> {
  // Text editing controllers
  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'that work.',
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 124,
        ),
        Container(
          alignment: Alignment.center,
          child: CustomTextField(
            controller: tecEmail,
            hintText: "Jouw email",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          // width: 340,
          child: CustomTextField(
            controller: tecEmail,
            hintText: "Jouw email",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.center,
          // width: 340,
          child: CustomTextField(
            controller: tecEmail,
            hintText: "Jouw email",
          ),
        ),
        SizedBox(
          height: 10,
        ),
        PrimaryButton(
          buttonText: 'Account maken',
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
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
    );
  }
}
