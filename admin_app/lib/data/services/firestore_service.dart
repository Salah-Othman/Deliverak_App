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

  Stream<QuerySnapshot> getOrders({String? status}) {
    Query query = _firestore.collection('orders');
    if (status != null) {
      query = query.where('status', isEqualTo: status);
    }
    return query.orderBy('createdAt', descending: true).snapshots();
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

  Stream<QuerySnapshot> getProducts(String merchantId) {
    return _firestore
        .collection('products')
        .where('merchantId', isEqualTo: merchantId)
        .snapshots();
  }

  Future<void> createProduct(Map<String, dynamic> productData) async {
    await _firestore.collection('products').add({
      ...productData,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> updateProduct(
      String productId, Map<String, dynamic> productData) async {
    await _firestore.collection('products').doc(productId).update({
      ...productData,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Future<void> deleteProduct(String productId) async {
    await _firestore.collection('products').doc(productId).delete();
  }

  Stream<DocumentSnapshot> getMerchant(String merchantId) {
    return _firestore.collection('merchants').doc(merchantId).snapshots();
  }

  Future<void> updateMerchant(
      String merchantId, Map<String, dynamic> merchantData) async {
    await _firestore.collection('merchants').doc(merchantId).update({
      ...merchantData,
      'updatedAt': FieldValue.serverTimestamp(),
    });
  }

  Stream<QuerySnapshot> getDrivers() {
    return _firestore
        .collection('users')
        .where('role', isEqualTo: 'driver')
        .snapshots();
  }

  Future<Map<String, dynamic>> getAnalytics(String merchantId) async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    final startOfMonth = DateTime(now.year, now.month, 1);

    final todayOrders = await _firestore
        .collection('orders')
        .where('merchantId', isEqualTo: merchantId)
        .where('createdAt', isGreaterThanOrEqualTo: startOfDay)
        .get();

    final weekOrders = await _firestore
        .collection('orders')
        .where('merchantId', isEqualTo: merchantId)
        .where('createdAt', isGreaterThanOrEqualTo: startOfWeek)
        .get();

    final monthOrders = await _firestore
        .collection('orders')
        .where('merchantId', isEqualTo: merchantId)
        .where('createdAt', isGreaterThanOrEqualTo: startOfMonth)
        .get();

    return {
      'todayOrders': todayOrders.docs.length,
      'weekOrders': weekOrders.docs.length,
      'monthOrders': monthOrders.docs.length,
    };
  }
}