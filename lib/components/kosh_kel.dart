import 'package:flutter/material.dart';

class KoshKel extends StatelessWidget {
  const KoshKel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/osh-7.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: const Text(
          "Ош шаарына кош келиниздер!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 70,
          ),
        ),
      ),
    );
  }
}