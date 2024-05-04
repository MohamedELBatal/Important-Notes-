import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: const Text(
        'Test Widget',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),
      ),
    );
  }
}