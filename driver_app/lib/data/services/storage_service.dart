import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/hive_flutter.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();
  late Box _cacheBox;

  Future<void> init() async {
    await Hive.initFlutter();
    _cacheBox = await Hive.openBox('cache');
  }

  Future<String> uploadImage(String path, File file) async {
    final ref = _storage.ref().child(path);
    await ref.putFile(file);
    return await ref.getDownloadURL();
  }

  Future<void> deleteImage(String path) async {
    await _storage.ref().child(path).delete();
  }

  Future<void> saveToken(String token) async {
    await _secureStorage.write(key: 'auth_token', value: token);
  }

  Future<String?> getToken() async {
    return await _secureStorage.read(key: 'auth_token');
  }

  Future<void> deleteToken() async {
    await _secureStorage.delete(key: 'auth_token');
  }

  Future<void> saveRefreshToken(String token) async {
    await _secureStorage.write(key: 'refresh_token', value: token);
  }

  Future<String?> getRefreshToken() async {
    return await _secureStorage.read(key: 'refresh_token');
  }

  Future<void> cacheData(String key, dynamic value) async {
    await _cacheBox.put(key, value);
  }

  dynamic getCachedData(String key) {
    return _cacheBox.get(key);
  }

  Future<void> deleteCachedData(String key) async {
    await _cacheBox.delete(key);
  }

  Future<void> clearCache() async {
    await _cacheBox.clear();
  }

  bool isCacheValid(String key, {Duration maxAge = const Duration(hours: 1)}) {
    final timestamp = _cacheBox.get('${key}_timestamp');
    if (timestamp == null) return false;
    final cacheTime = DateTime.fromMillisecondsSinceEpoch(timestamp);
    return DateTime.now().difference(cacheTime) < maxAge;
  }
}