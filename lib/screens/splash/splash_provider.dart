import 'package:flutter/material.dart';
import 'package:transporter/screens/register/register_view.dart';
import 'splash_state.dart';

class SplashProvider extends ChangeNotifier {
  SplashState state = SplashState();


  onAnimationTextEnd(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const RegisterPage(),), (
        route) => false);
    // state.endAnimationText = true;
    notifyListeners();
  }

}