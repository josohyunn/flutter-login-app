import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  String title;
  Logo(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      // inset영역 때문에(키보드가 올라오기 때문에)

      children: [
        SvgPicture.asset("assets/logo.svg", width: 70, height: 70),
        Text(
          "$title",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
