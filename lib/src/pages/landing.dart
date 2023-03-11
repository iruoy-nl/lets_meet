import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    final query = MediaQuery.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              // todo: display useful information.
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: query.size.height * 0.20),
            Text(
              "Let's\nmeet.",
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 64.0),
            TextButton(
              onPressed: () {
                // todo: create a new group
              },
              child: const Text(
                'Create group',
              ),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // todo: display a form to join a group.
              },
              child: const Text(
                'Join group',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
