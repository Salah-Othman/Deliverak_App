import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class FirebaseConfig {
  static bool _initialized = false;

  static bool get isInitialized => _initialized;

  static Future<void> initialize() async {
    if (_initialized) return;

    try {
      await Firebase.initializeApp();
      _initialized = true;
      debugPrint('Firebase initialized successfully');
    } catch (e) {
      debugPrint('Firebase initialization failed: $e');
      debugPrint('Please run: flutterfire configure');
      rethrow;
    }
  }

  static void checkConfig() {
    if (!_initialized) {
      throw Exception(
        'Firebase not initialized. Run "flutterfire configure" first.',
      );
    }
  }
}