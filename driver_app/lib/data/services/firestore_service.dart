import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static final FirestoreService _instance = FirestoreService._internal();
  factory FirestoreService() => _instance;
  FirestoreService._internal();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> createUser(String uid, Map<String, dynamic> userData) async {
    await _firestore.collection('users').doc(uid).set({
      ...userData,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<DocumentSnapshot> getUser(String uid) async {
    return await _firestore.collection('users').doc(uid).get();
  }

  Future<void> updateUser(String uid, Map<String, dynamic> userData) async {
    await _firestore.collection('users').doc(uid).update({
      ...userData,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getAvailableOrders() {
    return _firestore
        .collection('orders')
        .where('status', isEqualTo: 'ready')
        .where('driverId', isNull: true)
        .orderBy('createdAt', descending: true)
        .snapshots();
  }

  Stream<QuerySnapshot> getDriverOrders(String driverId) {
    return _firestore
        .collection('orders')
        .where('driverId', isEqualTo: driverId)
        .orderBy('createdAt', descending: true)
        .snapshots();
  }

  Future<DocumentSnapshot> getOrder(String orderId) async {
    return await _firestore.collection('orders').doc(orderId).get();
  }

  Future<void> updateOrderStatus(String orderId, String status) async {
    await _firestore.collection('orders').doc(orderId).update({
      'status': status,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> acceptOrder(String orderId, String driverId) async {
    await _firestore.collection('orders').doc(orderId).update({
      'driverId': driverId,
      'status': 'accepted',
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateDriverLocation(
      String driverId, double latitude, double longitude) async {
    await _firestore.collection('driver_locations').doc(driverId).set({
      'latitude': latitude,
      'longitude': longitude,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> setDriverOnline(String driverId, bool isOnline) async {
    await _firestore.collection('users').doc(driverId).update({
      'isOnline': isOnline,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Stream<DocumentSnapshot> getMerchant(String merchantId) {
    return _firestore.collection('merchants').doc(merchantId).snapshots();
  }

  Future<void> updateMerchantRating(
      String merchantId, double rating, int totalRatings) async {
    await _firestore.collection('merchants').doc(merchantId).update({
      'rating': rating,
      'totalRatings': totalRatings,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }
}