import 'package:flutter/material.dart';

import '../../../core/screen size/screen_size.dart';

class RegisterCircleAvatar extends StatelessWidget {
  RegisterCircleAvatar({super.key, required this.left, required this.top, required this.color, required this.radius});
  double radius;
  double left;
  double top;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: width(context) / left, top: top),
      child: CircleAvatar(
        backgroundColor: color,
        radius: radius,
      ),
    );
  }
}
