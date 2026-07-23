import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? get currentUser => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<void> verifyPhoneNumber({
    required String phoneNumber,
    required void Function(PhoneAuthCredential credential) verificationCompleted,
    required void Function(FirebaseAuthException error) verificationFailed,
    required void Function(String verificationId, int? resendToken) codeSent,
    required void Function(String verificationId) codeAutoRetrievalTimeout,
  }) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }

  Future<UserCredential> signInWithCredential(
      PhoneAuthCredential credential) async {
    return await _auth.signInWithCredential(credential);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }

  Future<bool> isPhoneNumberRegistered(String phoneNumber) async {
    final querySnapshot = await _firestore
        .collection('users')
        .where('phone', isEqualTo: phoneNumber)
        .limit(1)
        .get();
    return querySnapshot.docs.isNotEmpty;
  }

  Future<Map<String, dynamic>?> getUserData(String uid) async {
    final docSnapshot = await _firestore.collection('users').doc(uid).get();
    return docSnapshot.data();
  }

  Future<void> updateFCMToken(String uid, String token) async {
    await _firestore.collection('users').doc(uid).update({
      'fcmToken': token,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }
}