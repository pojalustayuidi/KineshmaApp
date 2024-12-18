import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconsLogo extends StatelessWidget {
  const IconsLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(children: [Image.asset('assets/Logo.png')],));
  }
}
