import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';
import '../exceptions/app_exception.dart';
import '../exceptions/auth_exception.dart';
import '../exceptions/order_exception.dart';
import '../exceptions/payment_exception.dart';
import 'failure.dart';

class ErrorHandler {
  static Either<Failure, T> handle<T>(dynamic error) {
    debugPrint('ErrorHandler: $error');

    if (error is AppException) {
      return Left(_mapExceptionToFailure(error));
    }

    return const Left(ServerFailure());
  }

  static Failure _mapExceptionToFailure(AppException exception) {
    if (exception is AuthException) {
      return AuthFailure(message: exception.message);
    }
    if (exception is OrderException) {
      return ServerFailure(message: exception.message);
    }
    if (exception is PaymentException) {
      return ServerFailure(message: exception.message);
    }
    return ServerFailure(message: exception.message);
  }

  static String mapFirebaseAuthError(String code) {
    switch (code) {
      case 'user-not-found':
        return 'لم يتم العثور على ح بهذا البريد الإلكتروني';
      case 'wrong-password':
        return 'كلمة المرور غير صحيحة';
      case 'email-already-in-use':
        return 'البريد الإلكتروني مستخدم بالفعل';
      case 'weak-password':
        return 'كلمة المرور ضعيفة جداً';
      case 'invalid-email':
        return 'البريد الإلكتروني غير صالح';
      case 'too-many-requests':
        return 'تم حظر الح مؤقتاً بسبب محاولات كثيرة، يرجى المحاولة لاحقاً';
      case 'operation-not-allowed':
        return 'هذه العملية غير مسموح بها';
      case 'invalid-verification-code':
        return 'رمز التحقق غير صحيح';
      case 'session-expired':
        return 'انتهت صلاحية الجلسة، يرجى المحاولة مرة أخرى';
      default:
        return 'حدث خطأ غير متوقع';
    }
  }
}
