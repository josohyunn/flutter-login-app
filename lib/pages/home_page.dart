import 'package:flutter/material.dart';
import 'package:profile_app/component/logo.dart';

import '../size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: xlarge_gap),
          Logo("Care Soft"),
          SizedBox(height: large_gap),
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Get Started")),
        ],
      ),
    );
  }
}
