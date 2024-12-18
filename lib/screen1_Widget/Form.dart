import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/services.dart';

import 'Button.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final TextEditingController _phoneController = TextEditingController();

    return Center(
      child: SizedBox(
        width: screenWidth * 0.85,
        child: Center(
          child: Column(
            children: [
              Form(
                child: IntlPhoneField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(15))),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),

              ),
              ContinueButton(phoneNumber: _phoneController.text),
            ],

          ),
        ),
      ),
    );
  }
}
