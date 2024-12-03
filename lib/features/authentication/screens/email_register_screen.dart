import 'package:flutter/material.dart';
import 'package:flutter_exam/features/authentication/screens/login_screen.dart';
import 'package:flutter_exam/features/authentication/widgets/privacy_policy_block.dart';
import 'package:flutter_exam/ui/common_widgets/custom_textfield.dart';
import 'package:flutter_exam/ui/common_widgets/primary_button.dart';

class EmailRegisterScreen extends StatefulWidget {
  static const String route = '${LoginScreen.route}/$location';
  static const String location = 'email-register';

  const EmailRegisterScreen({super.key});

  @override
  State<EmailRegisterScreen> createState() => _EmailRegisterScreenState();
}

class _EmailRegisterScreenState extends State<EmailRegisterScreen> {
  // Text editing controllers
  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CustomTextField(
          controller: tecEmail,
          hintText: "Jouw email",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          controller: tecEmail,
          hintText: "Wachtwoord",
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          controller: tecEmail,
          hintText: "Herhaal wachtwoord",
        ),
        const SizedBox(
          height: 10,
        ),
        const PrimaryButton(
          buttonText: 'Account maken',
        ),
        const PrivacyPolicyBlock(),
      ],
    );
  }
}
