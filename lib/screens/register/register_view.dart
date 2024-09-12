import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:transporter/core/enum/screen_enum.dart';
import 'package:transporter/core/widgets/circle_progras_indicator.dart';
import 'package:transporter/screens/register/components/register_button.dart';
import 'package:transporter/screens/register/components/register_circle_avatar.dart';
import 'package:transporter/screens/register/components/register_text.dart';
import 'package:transporter/screens/register/components/register_text_field.dart';
import 'register_provider.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => RegisterProvider(),
      builder: (context, child) => _buildPage(context),
    );
  }

  Widget _buildPage(BuildContext context) {
    final provider = context.read<RegisterProvider>();
    final state = provider.state;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          RegisterCircleAvatar(left: 2.3, top: 50, color: Colors.redAccent, radius: 110),
          RegisterCircleAvatar(left: 2.3, top: 120, color: Colors.white, radius: 80),
          RegisterCircleAvatar(left: 2, top: 150, color: Colors.orangeAccent, radius: 50),
          RegisterCircleAvatar(left: 1.74, top: 185, color: Colors.white, radius: 20),
          Column(
            children: [
              const RegisterText(),
              RegisterTextField(labelText: "Name", phone: false, textEditingController: state.name, pass: false,),
              RegisterTextField(labelText: "Email", phone: false, textEditingController: state.email, pass: false,),
              RegisterTextField(labelText: "Phone", phone: true, textEditingController: state.phone, pass: false,),
              RegisterTextField(labelText: "Password", phone: false, textEditingController: state.pass, pass: true,),
              RegisterTextField(labelText: "Confirm password", phone: false, textEditingController: state.confirmPass, pass: true,),
              state.status == ScreenStatus.loading
                  ? Padding(padding: const EdgeInsets.only(top: 50.0), child: loading(),)
                  : const RegisterButton(),
            ],
          ),
        ],
      )
    );
  }
}