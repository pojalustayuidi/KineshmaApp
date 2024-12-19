import 'package:flutter/material.dart';

class InputVerification extends StatelessWidget {
  const InputVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Input Verification Code",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 16, left: 16),
            child: Text(textAlign: TextAlign.center,
              "We have sent code to your phone number 324567895232",
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
