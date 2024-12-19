
import 'package:KineshmaApp/screen_RegisterInfoWidget/TextFill.dart';
import 'package:flutter/material.dart';

class ScreenRegisterInfo extends StatefulWidget {
  const ScreenRegisterInfo({super.key});

  @override
  State<ScreenRegisterInfo> createState() => _ScreenRegisterInfoState();
}

class ScreenRegisterInfoUI extends StatelessWidget {
  const ScreenRegisterInfoUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TextInfo()
      ],
    );
  }
}




class _ScreenRegisterInfoState extends State<ScreenRegisterInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenRegisterInfoUI(),
      appBar: AppBar(),
    );
  }
}