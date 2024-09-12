import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'splash_provider.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => SplashProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<SplashProvider>();
    final state = provider.state;
    return Scaffold(
      body: Center(
        child: AnimatedTextKit(
          onFinished: () => provider.onAnimationTextEnd(context),
          totalRepeatCount: 1,
          animatedTexts: [
            TyperAnimatedText(
                "Transporter",
                speed: const Duration(milliseconds: 65),
                textStyle: const TextStyle(
                  fontSize: 52,
                  fontFamily: "Kanit",
                  color: Colors.redAccent
                ),
            ),
          ],
        ),
      ),
    );
  }
}
