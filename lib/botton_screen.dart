import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rr_flutter6/profile_page.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Screen'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade300,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Column List'),
              onPressed: () {
                context.go('/columnlist');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('ListView'),
              onPressed: () {
                context.go('/listview');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('ListView.separated'),
              onPressed: () {
                context.go('/listview_separated');
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              child: const Text('Profile Page'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()));
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
