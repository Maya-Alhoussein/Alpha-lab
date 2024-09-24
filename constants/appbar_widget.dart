import 'package:flutter/material.dart';
class AppBarWidget extends StatelessWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                end: Alignment.topLeft,
                begin: Alignment.bottomRight,
                colors: [Color(0xFF0087BB), Colors.black]),
            // color: Color(0xFF0087BB),
            borderRadius: BorderRadius.circular(32),
          ),
        )
    );
  }
}
