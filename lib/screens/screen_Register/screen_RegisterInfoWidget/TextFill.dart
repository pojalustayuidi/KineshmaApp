import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
    children: [
      Text(
        'Fill your information below',
        style: TextStyle(
            fontFamily: 'Poppins-Regular',
            fontSize: 20,
            fontWeight: FontWeight.w600),
      ),
      SizedBox(),
      Padding(
        padding: const EdgeInsets.only(right: 16,left: 16),
        child: Text(textAlign: TextAlign.center,
          'Before use this application, please input your information first.',
          style: TextStyle(
            color: Color(0xFF667085),
              fontFamily: 'Poppins-Regular',
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
      SizedBox(
        width: 1,
      ),
    ],
    );
  }
}
