import 'package:flutter/material.dart';

class ExitScreen extends StatelessWidget {
  const ExitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exit Screen'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: const TextSpan(
                text: 'This is your',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: ' Exit ',
                    style: TextStyle(color: Colors.red),
                  ),
                  TextSpan(
                    text: 'Screen',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'If you press the ',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                      text: "back arrow", style: TextStyle(color: Colors.teal)),
                  TextSpan(
                    text: ' button',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            RichText(
              text: const TextSpan(
                text: 'You will be returned to the ',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Button Screen',
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text: ' instead of ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Profile Screen',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
