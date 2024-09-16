import 'package:flutter/material.dart';

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
      body: const Center(
        child: Text('This is your edit profile page'),
      ),
    );
  }
}
