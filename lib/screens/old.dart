import 'package:flutter/material.dart';

class moon extends StatefulWidget {
  const moon({super.key});

  @override
  State<moon> createState() => _moonState();
}

class _moonState extends State<moon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
    );
  }
}
