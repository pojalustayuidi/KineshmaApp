import 'package:flutter/material.dart';

class TextPhone extends StatelessWidget {
  const TextPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Have an account yet?',
          style: TextStyle(
              fontFamily: 'Poppins-Regular',
              fontSize: 12,
              height: 1.50,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 1,
        ),
        TextButton(
          onPressed: () {},
          child: Text('Login',
              style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'TTSmalls-SemiBold',
                  fontSize: 18)),
        ),
      ],
    );
  }
}

class TextUp extends StatelessWidget {
  const TextUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Для того чтобы продолжить необходимо ',
          style: TextStyle(
              fontFamily: 'Poppins-Regular',
              fontSize: 12,
              height: 1.50,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(
          width: 1,
        ),
        Text(
          'Зарегистрироваться',
          style: TextStyle(
              fontFamily: 'Poppins-Regular',
              color: Color(0xFF2E6659),
              fontSize: 16,
              fontWeight: FontWeight.w400),
        )
      ],
    );
  }
}
