import 'package:flutter/material.dart';
import 'package:flutter_exam/core/routing/mixins/screen_state_mixin.dart';
import 'package:flutter_exam/ui/buttons/jobr_icon_button.dart';
import 'package:flutter_exam/ui/theme/jobr_icons.dart';

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
            print("Icon-Label Button Pressed");
          },
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
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
    );
  }
}
