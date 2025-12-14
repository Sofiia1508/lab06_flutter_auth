import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reset password')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Login or Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: Text('Message'),
                    content: Text('Password reset requested'),
                  ),
                );
              },
              child: const Text('Reset password'),
            ),

            const SizedBox(height: 12),

            OutlinedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
