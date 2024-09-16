import 'package:flutter/material.dart';
import 'package:rr_flutter6/edit_screen.dart';
import 'package:rr_flutter6/exit_screen.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
        centerTitle: true,
        backgroundColor: Colors.cyan[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Navigator(
            //   pages: const [
            //     MaterialPage(
            //       child: EditScreen(),
            //     ),
            //     MaterialPage(
            //       child: ExitScreen(),
            //     ),
            //   ],
            // ),
            const Text('This is your profile page'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditScreen(),
                  ),
                );
              },
              child: const Text('Edit Profile'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ExitScreen(),
                  ),
                );
              },
              child: const Text('Exit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
