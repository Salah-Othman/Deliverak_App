import 'package:intl/intl.dart';

class Formatters {
  Formatters._();

  static String currency(double amount, {String currency = 'EGP'}) {
    final formatter = NumberFormat.currency(
      locale: 'ar_EG',
      symbol: currency,
      decimalDigits: 2,
    );
    return formatter.format(amount);
  }

  static String date(DateTime date) {
    return DateFormat('dd/MM/yyyy', 'ar_EG').format(date);
  }

  static String dateTime(DateTime date) {
    return DateFormat('dd/MM/yyyy hh:mm a', 'ar_EG').format(date);
  }

  static String time(DateTime date) {
    return DateFormat('hh:mm a', 'ar_EG').format(date);
  }

  static String timeAgo(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inMinutes < 1) {
      return 'الآن';
    } else if (difference.inMinutes < 60) {
      return 'منذ ${difference.inMinutes} دقيقة';
    } else if (difference.inHours < 24) {
      return 'منذ ${difference.inHours} ساعة';
    } else if (difference.inDays < 7) {
      return 'منذ ${difference.inDays} يوم';
    } else {
      return formatDate(date);
    }
  }

  static String formatDate(DateTime date) {
    return DateFormat('dd/MM/yyyy', 'ar_EG').format(date);
  }

  static String phone(String phone) {
    if (phone.length == 11) {
      return '${phone.substring(0, 3)}-${phone.substring(3, 7)}-${phone.substring(7)}';
    }
    return phone;
  }

  static String orderStatus(String status) {
    switch (status) {
      case 'pending':
        return 'قيد الانتظار';
      case 'accepted':
        return 'تم القبول';
      case 'preparing':
        return 'قيد التجهيز';
      case 'ready':
        return 'جاهز';
      case 'picked_up':
        return 'تم الاستلام';
      case 'on_the_way':
        return 'في الطريق';
      case 'delivered':
        return 'تم التوصيل';
      case 'cancelled':
        return 'ملغي';
      default:
        return status;
    }
  }
}