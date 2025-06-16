



import 'package:flutter/material.dart';
import 'package:slide_countdown/slide_countdown.dart';

class MySlideCountDown extends StatelessWidget {
  const MySlideCountDown({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideCountdown(

                duration: Duration(days: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.teal,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
              SizedBox(height: 20),
              SlideCountdownSeparated(
                duration: Duration(days: 2),
              ),
            ],
          ),
        ),
      );
  }
}
