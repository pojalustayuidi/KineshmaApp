import 'package:KineshmaApp/screens/screen_RegisterPhoneNumber/screen1_Widget/phonenumberform.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/phone_number.dart';

class InputVerification extends StatelessWidget {
  final String phonenumber;
  const InputVerification({required this.phonenumber});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Input Verification Code",
            style: TextStyle(fontSize: 20,height: 1.50, fontWeight: FontWeight.w600,fontFamily: 'Poppins-Regular'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, right: 16, left: 16),
            child: Text(textAlign: TextAlign.center,
              "We have sent code to your phone number $phonenumber",
              style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400, fontFamily: 'Poppins-Regular',height: 1.43),
            ),
          ),
        ],
      ),
    );
  }
}
