import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lets_meet/src/pages/pages.dart';
import 'package:lets_meet/src/state/user.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    super.initState();

    // Ensure the user is authenticated.
    ref.read(user$.notifier).signInAnonymously();
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      routes: {
        '/': (_) => const LandingPage(),
      },
    );
  }
}
