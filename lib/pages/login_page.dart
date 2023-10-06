import 'package:flutter/material.dart';
import 'package:profile_app/component/custom_form.dart';
import 'package:profile_app/component/logo.dart';
import 'package:profile_app/size.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            // inset 영역 때문에(키보드 올라오는거)
            children: [
              SizedBox(height: xlarge_gap),
              Logo("Login"),
              CustomForm(),
            ],
          ),
        ));
  }
}
