import 'package:firebase_auth/firebase_auth.dart';
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
  String phonenumber = '';
  bool isCodeSent = false;
  @override
  Widget build(BuildContext context ) {
    double screenWidth = MediaQuery.of(context).size.width;
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController smsCodeController = TextEditingController();
    final FirebaseAuth auth = FirebaseAuth.instance;
    String verificationId = '';
    bool isCodeSent = false;
    Future<void> verifyPhoneNumber() async {
      await auth.verifyPhoneNumber(
        phoneNumber: phoneController.text,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Phone number automatically verified'),
          ));
        },
        verificationFailed: (FirebaseAuthException e) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(e.message ?? 'Verification failed'),
          ));
        },
        codeSent: (String verificationId, int? resendToken) {
          setState(() {
            verificationId = verificationId;
            isCodeSent = true;
          });
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Code sent to your phone'),
          ));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    }
    Future<void> signInWithPhoneNumber() async {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId,
        smsCode: smsCodeController.text,
      );

      try {
        await auth.signInWithCredential(credential);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Successfully signed in'),
        ));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Failed to sign in: $e'),
        ));
      }
    }
    return Center(
      child: SizedBox(
        width: screenWidth * 0.85,
        child: Center(
          child: Column(
            children: [
              Form(
                child: IntlPhoneField(
                  controller: phoneController,
                  initialCountryCode: 'RU',
                  onChanged: (phone) {
                  },
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    hintText: '9018837712',
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Введите номер телефона",
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(15))),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),

              ),
              ContinueButton(phoneNumber: phoneController.text,),
            ],

          ),
        ),
      ),
    );
  }
}
