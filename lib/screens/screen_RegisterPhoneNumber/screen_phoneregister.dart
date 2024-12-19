import 'package:KineshmaApp/screen1_Widget/phonenumberform.dart';
import 'package:KineshmaApp/screen1_Widget/textphone.dart';
import 'package:KineshmaApp/screen1_Widget/iconlogo.dart';
import 'package:flutter/material.dart';

class ScreenRegister extends StatefulWidget {
  const ScreenRegister({super.key});

  @override
  State<ScreenRegister> createState() => _ScreenRegisterState();
}

class ScreenRegisterUI extends StatelessWidget {
  const ScreenRegisterUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconsLogo(),
        SizedBox(
          height: 50,
        ),
        PhoneNumberForm(),
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




class _ScreenRegisterState extends State<ScreenRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenRegisterUI(),
    );
  }
}

