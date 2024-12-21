import 'package:flutter/material.dart';

// import 'Dialog/dialog_already_registred.dart';

class ButtonSec extends StatefulWidget {
  const ButtonSec({super.key});

  @override
  State<ButtonSec> createState() => _ButtonSecState();
}

class _ButtonSecState extends State<ButtonSec> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Center(
      child: SizedBox(
        width: screenWidth * 0.85,
        height: screenHeight * 0.055,
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/RegisterInfo');
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Text(
            'Continue',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}