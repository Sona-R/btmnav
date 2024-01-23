import 'package:flutter/material.dart';

class planets extends StatefulWidget {
  const planets({super.key});

  @override
  State<planets> createState() => _planetsState();
}

class _planetsState extends State<planets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
    );
  }
}
