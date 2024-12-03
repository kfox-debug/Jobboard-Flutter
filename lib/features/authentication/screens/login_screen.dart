import 'package:flutter/material.dart';
import 'package:lyte_studios_flutter_ui/lyte_studios_flutter_ui.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String route = '/$location';
  static const String location = 'login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with ScreenStateMixin {
  final TextEditingController emailTec = TextEditingController();
  final TextEditingController pwTec = TextEditingController();

  String? error;

  Future<void> signIn() async {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class ScreenStateMixin {}

@override
Widget build(BuildContext context) {
  final ThemeData theme = Theme.of(context);
}
