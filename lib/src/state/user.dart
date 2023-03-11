import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends StateNotifier<User?> {
  final FirebaseAuth instance;

  UserNotifier({
    required this.instance,
  }) : super(null) {
    // Listen to Firebase authentication changes.
    instance //
        .authStateChanges()
        .listen((user) => state = user);
  }

  Future<void> signInAnonymously() async {
    await instance.signInAnonymously();
  }

  Future<void> signOut() async {
    await instance.signOut();
  }

  Future<void> updateDisplayName(
    String? name,
  ) async {
    await state?.updateDisplayName(name);
  }
}

final user$ = StateNotifierProvider<UserNotifier, User?>((ref) {
  final instance = FirebaseAuth.instance;

  return UserNotifier(instance: instance);
});
