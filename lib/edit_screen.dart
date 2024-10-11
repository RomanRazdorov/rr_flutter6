import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EditScreen extends StatelessWidget {
  const EditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Screen'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('This is your edit profile page'),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Pop back'),
        ),
      ])),
    );
  }
}
