import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class MyConfetti extends StatefulWidget {
  const MyConfetti({super.key});

  @override
  State<MyConfetti> createState() => _MyConfettiState();
}

class _MyConfettiState extends State<MyConfetti> {
  final ConfettiController confettiController = ConfettiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConfettiWidget(
                confettiController: confettiController,
                blastDirection: pi / 2,
                emissionFrequency: 0.6,
                numberOfParticles: 20,
                minBlastForce: 10,
                maxBlastForce: 20,
                gravity: 0.5,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          confettiController.play();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
