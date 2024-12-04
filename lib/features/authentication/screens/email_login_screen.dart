import 'package:flutter/material.dart';
import 'package:flutter_exam/features/authentication/screens/login_screen.dart';
import 'package:flutter_exam/features/authentication/widgets/privacy_policy_block.dart';
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
        const PrivacyPolicyBlock(),
      ],
    );
  }
}
