import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter/services.dart';

import 'continuebutton.dart';

class PhoneNumberForm extends StatefulWidget {
  const PhoneNumberForm({super.key});

  @override
  State<PhoneNumberForm> createState() => _PhoneNumberFormState();
}

class _PhoneNumberFormState extends State<PhoneNumberForm> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final TextEditingController phoneController = TextEditingController();

    return Center(
      child: SizedBox(
        width: screenWidth * 0.85,
        child: Center(
          child: Column(
            children: [
              Form(
                child: IntlPhoneField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(15))),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),

              ),
              ContinueButton(phoneNumber: phoneController.text),
            ],

          ),
        ),
      ),
    );
  }
}
