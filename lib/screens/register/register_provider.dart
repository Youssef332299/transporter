import 'package:flutter/material.dart';
import 'package:transporter/core/enum/screen_enum.dart';
import 'package:transporter/core/widgets/snack_bar.dart';
import 'package:transporter/screens/register/widgets/customer_or_transporter/customer_or_transporter_view.dart';

import 'register_state.dart';

class RegisterProvider extends ChangeNotifier {
  final state = RegisterState();

  onTapSignup(context) {
    if (state.name.text.isNotEmpty &&
        state.phone.text.isNotEmpty &&
        state.email.text.isNotEmpty &&
        state.pass.text.isNotEmpty &&
        state.confirmPass.text.isNotEmpty) {
      if (state.confirmPass.text == state.pass.text) {
        state.status = ScreenStatus.loading;
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const CustomerOrTransporterPage(),), (route) => false);
      } else {
        showSnackBar(context, "The two password fields are not equal");
      }
    } else {
      showSnackBar(context, "Complete fields");
    }
  }
}
