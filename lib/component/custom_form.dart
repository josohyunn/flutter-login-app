import 'package:flutter/material.dart';
import 'package:profile_app/component/custom_text_form_field.dart';
import 'package:profile_app/size.dart';
import 'package:profile_app/user_repository.dart';
import 'package:profile_app/validator_util.dart';

// view의 역할
class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomForm();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey, // Form의 정보를 다 가지고있다.
        child: Column(
          children: [
            CustomTextFormField(
              text: "Email",
              validate: validateEmail(),
              textController: _email,
            ),
            CustomTextFormField(
                text: "Password",
                textController: _password,
                validate: validatePassword(),
                isPassword: true),
            SizedBox(height: large_gap),
            TextButton(
                onPressed: () {
                  // formKEy가 연결되지 않으면 currentState가 null이다.
                  if (_formKey.currentState!.validate()) {
                    // if문 : validation가 null을 리턴하면 true가 된다.
                    UserRepository repo = UserRepository();
                    repo.login(_email.text.trim(),
                        _password.text.trim()); // trim() : 앞뒤 공백 날려줌
                    Navigator.pushNamed(context, "/home");
                  }
                },
                child: Text("Login"))
          ],
        ));
  }
}
