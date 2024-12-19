import 'package:flutter/material.dart';

class TextInfo extends StatelessWidget {
  const TextInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Fill your information below',style: TextStyle(fontFamily: 'Poppins-Regular',fontSize: 12),),
        SizedBox(
          width: 1,
        ),
        TextButton(
          onPressed: () {},
          child: Text('Login',
              style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'TTSmalls-SemiBold',fontSize: 18)),
        ),
      ],
    );
  }
}
