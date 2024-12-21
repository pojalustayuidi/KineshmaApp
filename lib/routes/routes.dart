import 'package:KineshmaApp/screens/screen_Register/screen_register.dart';

import '../screens/screen_Home/screen_home.dart';
import '../screens/screen_InputVerificationCode/screen_inputverivicationcode.dart';
import '../screens/screen_RegisterPhoneNumber/screen_phoneregister.dart';
final routes = {
'/': (context) => ScreenRegister(),
  '/InputVerificationCode': (context) => ScreenInputVerification(),
  '/RegisterInfo': (context) => ScreenRegisterInfo(),
  '/home' : (context) => ScreenHome(),
};