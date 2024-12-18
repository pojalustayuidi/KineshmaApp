import 'package:KineshmaApp/screen1_Widget/Button.dart';
import 'package:KineshmaApp/screen1_Widget/Form.dart';
import 'package:KineshmaApp/screen1_Widget/TextWidget.dart';
import 'package:KineshmaApp/screen1_Widget/Widget.dart';
import 'package:flutter/material.dart';

class screenRegisterUI extends StatefulWidget {
  const screenRegisterUI({super.key});

  @override
  State<screenRegisterUI> createState() => _screenRegisterUIState();
}

class _screenRegisterUIState extends State<screenRegisterUI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconsLogo(),
        SizedBox(
          height: 50,
        ),
        PhoneNumber(),
        SizedBox(
          height: 48,
        ),
        Spacer(
          flex: 1,
        ),
        TextPhone(),
        SizedBox(height: 40,)
      ],
    );
  }
}

class screenRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenRegisterUI(),
    );
  }
}
