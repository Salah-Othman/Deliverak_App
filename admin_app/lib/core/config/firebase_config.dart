import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

class FirebaseConfig {
  static bool _initialized = false;

  static Future<void> initialize() async {
    if (_initialized) return;

    try {
      await Firebase.initializeApp();
      _initialized = true;
    } catch (e) {
      debugPrint('Firebase initialization failed: $e');
      debugPrint('App will run in offline mode. Run "flutterfire configure" to set up Firebase.');
    }
  }

  static bool get isInitialized => _initialized;
}