class FirebaseConstants {
  FirebaseConstants._();

  static const String usersCollection = 'users';
  static const String merchantsCollection = 'merchants';
  static const String productsCollection = 'products';
  static const String ordersCollection = 'orders';
  static const String driverLocationsCollection = 'driver_locations';
  static const String notificationsCollection = 'notifications';

  static const String phoneField = 'phone';
  static const String emailField = 'email';
  static const String nameField = 'name';
  static const String roleField = 'role';
  static const String createdAtField = 'createdAt';
  static const String updatedAtField = 'updatedAt';
  static const String fcmTokenField = 'fcmToken';

  static const String roleCustomer = 'customer';
  static const String roleDriver = 'driver';
  static const String roleAdmin = 'admin';
  static const String roleMerchant = 'merchant';

  static const String orderPending = 'pending';
  static const String orderAccepted = 'accepted';
  static const String orderPreparing = 'preparing';
  static const String orderReady = 'ready';
  static const String orderPickedUp = 'picked_up';
  static const String orderOnTheWay = 'on_the_way';
  static const String orderDelivered = 'delivered';
  static const String orderCancelled = 'cancelled';

  static const String profileImagesPath = 'profile_images';
  static const String productImagesPath = 'product_images';
  static const String merchantImagesPath = 'merchant_images';
}