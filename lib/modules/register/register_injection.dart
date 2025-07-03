import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/register/domain/register_provider.dart';
import 'package:rutea_app/modules/register/interface/register_screen.dart';

class RegisterInjection {
  RegisterInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => RegisterProvider(),
      child: RegisterScreen(),
    );
  }
}
