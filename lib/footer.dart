import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 100,
      child: Center(
        child: Text('© 2024 Company Name', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}