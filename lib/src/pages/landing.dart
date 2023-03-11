import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    final query = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
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
            const Text(
              "Let's\nmeet.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 48.0,
                fontWeight: FontWeight.w600,
                height: 0.8,
              ),
            ),
            const SizedBox(height: 64.0),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                ),
                overlayColor: MaterialStatePropertyAll(Colors.black12),
                minimumSize: MaterialStatePropertyAll(Size(200, 60)),
              ),
              onPressed: () {
                // todo: create a new group
              },
              child: const Text(
                'Create group',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(32.0),
                    ),
                  ),
                ),
                overlayColor: MaterialStatePropertyAll(Colors.black12),
                minimumSize: MaterialStatePropertyAll(Size(200, 60)),
              ),
              onPressed: () {
                // todo: display a form to join a group.
              },
              child: const Text(
                'Join group',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
