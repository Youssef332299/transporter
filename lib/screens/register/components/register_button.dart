import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transporter/core/constants/constants.dart';
import 'package:transporter/core/screen%20size/screen_size.dart';
import 'package:transporter/screens/register/register_provider.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height(context)/ 10),
      child: MaterialButton(
        onPressed: () => context.read<RegisterProvider>().onTapSignup(context),
        elevation: 30,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.redAccent,width: 0)
        ),
        height: height(context) / 15,
        color: Colors.redAccent,
        minWidth: width(context) / 1.15,
        child: const Text(
          "Signup",
          style: TextStyle(
              color: Colors.white,
              fontFamily: fontKanit
          ),
        ),
      ),
    );
  }
}
