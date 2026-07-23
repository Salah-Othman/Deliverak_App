import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  const Failure({required this.message});

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure({String message = 'حدث خطأ في الخادم، يرجى المحاولة مرة أخرى'})
      : super(message: message);
}

class NetworkFailure extends Failure {
  const NetworkFailure({String message = 'لا يوجد اتصال بالإنترنت، يرجى التحقق من الاتصال'})
      : super(message: message);
}

class CacheFailure extends Failure {
  const CacheFailure({String message = 'حدث خطأ في حفظ البيانات'})
      : super(message: message);
}

class AuthFailure extends Failure {
  const AuthFailure({String message = 'حدث خطأ في المصادقة'})
      : super(message: message);
}

class LocationFailure extends Failure {
  const LocationFailure({String message = 'لا يمكن تحديد الموقع، يرجى تفعيل خدمات الموقع'})
      : super(message: message);
}

class StorageFailure extends Failure {
  const StorageFailure({String message = 'حدث خطأ في رفع الملفات'})
      : super(message: message);
}

class ValidationFailure extends Failure {
  const ValidationFailure({String message = 'البيانات المدخلة غير صحيحة'})
      : super(message: message);
}

class PermissionFailure extends Failure {
  const PermissionFailure({String message = 'ليس لديك صلاحية للوصول لهذه الميزة'})
      : super(message: message);
}