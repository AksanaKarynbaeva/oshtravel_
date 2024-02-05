import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oshtravel_/components/kosh_kel.dart';
import 'package:oshtravel_/screens/main_screen.dart';


class WelcomScreen2 extends StatelessWidget {
  const WelcomScreen2({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DelayedTransition(),
    );
  }
}
class DelayedTransition extends StatefulWidget {
  const DelayedTransition({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DelayedTransitionState createState() => _DelayedTransitionState();
}

class _DelayedTransitionState extends State<DelayedTransition> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: KoshKel(),
    );
  }

  // Text();
}
