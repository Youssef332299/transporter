import 'package:flutter/material.dart';
import 'package:transporter/core/constants/constants.dart';

class RegisterTextField extends StatelessWidget {
  RegisterTextField({
    super.key,
    required this.labelText,
    required this.pass,
    required this.phone,
    required this.textEditingController});

  String labelText;
  bool phone;
  bool pass;
  TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20,),
        child: TextField(
          cursorHeight: 20,
          controller: textEditingController,
          keyboardType: phone
          ? TextInputType.phone
          : TextInputType.text,
          obscureText: pass,
          style: const TextStyle(
              color: Colors.redAccent,
              fontFamily: fontKanit
          ),
          cursorColor: Colors.redAccent,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: const TextStyle(
                color: Colors.orangeAccent,
                fontFamily: fontKanit
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent,width: 1.8),
              borderRadius: BorderRadius.circular(10),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      );
  }
}
