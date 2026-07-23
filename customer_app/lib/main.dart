import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/theme/app_theme.dart';
import 'data/services/notification_service.dart';
import 'data/services/storage_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await StorageService().init();
  await NotificationService().init();
  runApp(const ProviderScope(child: DeliverakApp()));
}

class DeliverakApp extends StatelessWidget {
  const DeliverakApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ديليفراك',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      locale: const Locale('ar', 'EG'),
      supportedLocales: const [
        Locale('ar', 'EG'),
        Locale('en', 'US'),
      ],
      home: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}