// ignore_for_file: must_be_immutable
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class OnBoardingLottie extends StatelessWidget {
  OnBoardingLottie({super.key, required this.title, required this.image});

  String image;
  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 2.5,
              child: Lottie.asset(image!)),
          Text(
            title!,
            style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontFamily: "DancingScript",
                fontSize: 22),
          ),
        ],
      ),
    );
  }
}
