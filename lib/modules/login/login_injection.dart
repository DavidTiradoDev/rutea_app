import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rutea_app/modules/login/domain/login_provider.dart';
import 'package:rutea_app/modules/login/interface/login_screen.dart';

class LoginInjection {
  LoginInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => LoginProvider(),
      child: LoginScreen(),
    );
  }
}
