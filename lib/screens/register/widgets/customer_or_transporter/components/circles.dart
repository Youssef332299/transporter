import 'package:flutter/material.dart';
import 'package:transporter/core/constants/constants.dart';
import 'package:transporter/screens/customer/customer_view.dart';
import 'package:transporter/screens/transporter/transporter_view.dart';

class Circles extends StatelessWidget {
  const Circles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
            "You are transporter or customer",
            style: TextStyle(
                fontSize: 20,
                color: Colors.orangeAccent,
                fontFamily: fontKanit)),
        Center(
          child: GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => CustomerPage(),), (
                      route) => false);
            },
            child: const CircleAvatar(
              radius: 130,
              backgroundColor: Colors.redAccent,
              child: Icon(Icons.person, size: 150, color: Colors.white),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => TransporterPage(),), (
                route) => false);
          },
          child: const CircleAvatar(
            radius: 130,
            backgroundColor: Colors.redAccent,
            child: Icon(Icons.drive_eta, size: 150, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
