import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'on_boarding_provider.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => OnBoardingProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<OnBoardingProvider>();
    final state = provider.state;

    return Scaffold(
      body: Column(
        children: [

        ],
      ),
    );
  }
}