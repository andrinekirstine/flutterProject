import 'package:flutter/material.dart';
import 'package:my_app/home/home.dart';
import 'package:my_app/login/view/login.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  // Return home or login
  @override
  Widget build(BuildContext context) {
    //return SignIn();
    return const LoginPage();
  }
}
