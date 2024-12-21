import 'package:KineshmaApp/screens/screen_Home/Widgets/textgoodmorning.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class ScreenHomeUI extends StatelessWidget {
  const ScreenHomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [WelcomeText()
        ],
      ),
    );
  }
}




class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenHomeUI(),
    );
  }
}
