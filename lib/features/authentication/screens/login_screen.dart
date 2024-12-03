import 'package:flutter/material.dart';
import 'package:flutter_exam/core/routing/mixins/screen_state_mixin.dart';
import 'package:flutter_exam/features/authentication/screens/email_register_screen.dart';
import 'package:flutter_exam/features/authentication/widgets/privacy_policy_block.dart';
import 'package:flutter_exam/ui/buttons/jobr_icon_button.dart';
import 'package:flutter_exam/ui/theme/jobr_icons.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  static const String route = '/$location';
  static const String location = 'login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ScreenStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        JobrIconButton(
          reverseAlign: true,
          icon: JobrIcons.appleIcon,
          label: "Doorgaan met",
          onPressed: () {
            print("Icon-Label Button Pressed");
          },
        ),
        const SizedBox(
          height: 10,
        ),
        JobrIconButton(
          reverseAlign: true,
          icon: JobrIcons.googleIcon,
          label: "Doorgaan met",
          onPressed: () {
            print("Icon-Label Button Pressed");
          },
        ),
        const SizedBox(
          height: 10,
        ),
        JobrIconButton(
          reverseAlign: true,
          icon: JobrIcons.emailIcon,
          label: "Doorgaan met Email",
          onPressed: () {
            context.push(EmailRegisterScreen.route);
          },
        ),
        const PrivacyPolicyBlock(),
      ],
    );
  }
}
