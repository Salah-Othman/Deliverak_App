import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Users
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

  // Merchants
  Stream<QuerySnapshot> getMerchants({bool? isActive}) {
    Query query = _firestore.collection('merchants');
    if (isActive != null) {
      query = query.where('isActive', isEqualTo: isActive);
    }
    return query.snapshots();
  }

  Future<DocumentSnapshot> getMerchant(String merchantId) async {
    return await _firestore.collection('merchants').doc(merchantId).get();
  }

  // Products
  Stream<QuerySnapshot> getProductsByMerchant(String merchantId) {
    return _firestore
        .collection('products')
        .where('merchantId', isEqualTo: merchantId)
        .where('isAvailable', isEqualTo: true)
        .snapshots();
  }

  Future<DocumentSnapshot> getProduct(String productId) async {
    return await _firestore.collection('products').doc(productId).get();
  }

  // Orders
  Future<String> createOrder(Map<String, dynamic> orderData) async {
    final docRef = await _firestore.collection('orders').add({
      ...orderData,
      'createdAt': FieldValue.serverTimestamp(),
      'updatedAt': FieldValue.serverTimestamp(),
    });
    return docRef.id;
  }

  Stream<QuerySnapshot> getCustomerOrders(String customerId) {
    return _firestore
        .collection('orders')
        .where('customerId', isEqualTo: customerId)
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

  // Driver locations
  Stream<DocumentSnapshot> getDriverLocation(String driverId) {
    return _firestore.collection('driver_locations').doc(driverId).snapshots();
  }
}