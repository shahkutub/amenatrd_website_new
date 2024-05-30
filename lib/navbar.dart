import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('আমেনা ট্রেডার্স'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Home', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
          child: Text('About', style: TextStyle(color: Colors.white)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/contact');
          },
          child: Text('Contact', style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}