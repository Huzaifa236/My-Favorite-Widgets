import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class MyPinput extends StatefulWidget {
  const MyPinput({super.key});

  @override
  State<MyPinput> createState() => _MyPinputState();
}

class _MyPinputState extends State<MyPinput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Pinput(
                length: 5,
                defaultPinTheme: PinTheme(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey.shade300),
                  ),
                  textStyle: TextStyle(fontSize: 20),
                ),

                focusedPinTheme: PinTheme(
                  height: 62,
                  width: 62,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey.shade600),
                  ),
                  textStyle: TextStyle(fontSize: 20),
                ),
                submittedPinTheme: PinTheme(
                  height: 56,
                  width: 56,
                  decoration: BoxDecoration(
                    color: Colors.green.shade200,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey.shade600),
                  ),
                  textStyle: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
