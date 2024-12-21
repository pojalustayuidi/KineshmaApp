import 'package:flutter/material.dart';
class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Column(
          children: [
            Text(
                'Good Morning,',
              style: TextStyle(color: Color(0xFF667085),
                  fontFamily: 'Poppins-Regular',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Olivia Rhye',
              style: TextStyle(color: Color(0xFF101828),
                  fontFamily: 'Poppins-Regular',
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      );
  }
}