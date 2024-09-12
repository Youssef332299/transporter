import 'package:flutter/cupertino.dart';
import 'package:transporter/core/enum/screen_enum.dart';

class RegisterState {

  ScreenStatus status = ScreenStatus.init;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController confirmPass = TextEditingController();

}
