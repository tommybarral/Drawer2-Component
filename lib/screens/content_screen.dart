
import 'package:flutter/material.dart';

class ContentScreen extends StatelessWidget {
  const ContentScreen({Key? key}) : super(key: key);
  static const routeName = '/content-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      body: Center(
        child: Text(
          'Custom Drawer Component',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
