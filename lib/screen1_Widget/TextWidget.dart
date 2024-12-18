import 'package:flutter/material.dart';

class TextPhone extends StatelessWidget {
  const TextPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Have an account yet?',style: TextStyle(fontFamily: 'Poppins-Regular',fontSize: 12),),
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
