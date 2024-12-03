import 'package:flutter/material.dart';
import 'package:flutter_exam/features/authentication/screens/email_login_screen.dart';
import 'package:flutter_exam/features/authentication/screens/login_screen.dart';
import 'package:flutter_exam/ui/buttons/jobr_icon_button.dart';
import 'package:flutter_exam/ui/theme/jobr_icons.dart';
import 'package:go_router/go_router.dart';

class FirstGlanceScreen extends StatefulWidget {
  static const String route = '/$location';
  static const String location = '';

  const FirstGlanceScreen({super.key});

  @override
  State<FirstGlanceScreen> createState() => _FirstGlanceScreenState();
}

class _FirstGlanceScreenState extends State<FirstGlanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          height: 200,
        ),
        JobrIconButton(
          icon: JobrIcons.lighteningIcon,
          radius: 27,
          label: "Ik zoek een job",
          buttonColor: Colors.white,
          onPressed: () {
            print("Icon-Label Button Pressed");
          },
        ),
        const SizedBox(
          height: 10,
        ),
        JobrIconButton(
          icon: JobrIcons.bagIcon,
          label: "Ik zoek talent",
          buttonColor: Colors.white,
          onPressed: () {
            context.push(LoginScreen.route);
          },
        ),
        const Padding(
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
    );
  }
}
