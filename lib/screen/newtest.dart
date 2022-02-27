import 'package:flutter/material.dart';

class JustTest extends StatefulWidget {
  const JustTest({Key? key}) : super(key: key);

  @override
  _JustTestState createState() => _JustTestState();
}

class _JustTestState extends State<JustTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075e54),
        onPressed: () {},
        child: const Icon(Icons.call),
      ),
      body: const Center(
        child: Text(
          "Just Test Screen",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
