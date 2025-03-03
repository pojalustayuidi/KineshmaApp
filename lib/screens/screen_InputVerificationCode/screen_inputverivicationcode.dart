import 'package:KineshmaApp/screens/screen_InputVerificationCode/screen_inputverWidget/buttonsic.dart';
import 'package:KineshmaApp/screens/screen_InputVerificationCode/screen_inputverWidget/otptextfield.dart';
import 'package:KineshmaApp/screens/screen_InputVerificationCode/screen_inputverWidget/text_inputverificationcode.dart';
import 'package:flutter/material.dart';

class ScreenInputVerificationUI extends StatefulWidget {
  const ScreenInputVerificationUI({super.key});

  @override
  State<ScreenInputVerificationUI> createState() =>
      _ScreenInputVerificationUI();
}

class _ScreenInputVerificationUI extends State<ScreenInputVerificationUI> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 24,
        ),
        InputVerification(phonenumber: '',),
        SizedBox(
          height: 48,
        ),
        OTPTextField(),
        SizedBox(height: 21,),
        ButtonSec()
      ],
    );
  }
}

class ScreenInputVerification extends StatelessWidget {
  const ScreenInputVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenInputVerificationUI(),
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(2.0),
            child: Container(
              color: Colors.grey,
              height: 1.0,
            )),
      ),
    );
  }
}
