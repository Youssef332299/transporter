import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../core/constants/constants.dart';
import '../../../core/screen size/screen_size.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            right: width(context) / 1.9,
            top: height(context) / 10,
            bottom: height(context) / 15),
        child: AnimatedTextKit(
            totalRepeatCount: 6,
            animatedTexts: [
          TyperAnimatedText(
            speed: const Duration(milliseconds: 200),
            "Signup",
            textStyle: const TextStyle(
              fontFamily: fontKanit,
              fontSize: 42,
              fontWeight: FontWeight.w900,
              color: Colors.redAccent,
            ),
          )
        ]));
  }
}
