import 'package:flutter_bloc/flutter_bloc.dart';
import '../error/cubit_state.dart';
import '../error/error_handler.dart';

abstract class BaseCubit<T> extends Cubit<CubitState> {
  BaseCubit() : super(const CubitInitial());

  void safeEmit(CubitState newState) {
    if (!isClosed) {
      emit(newState);
    }
  }

  void emitLoading({String? message}) {
    safeEmit(CubitLoading(message: message));
  }

  void emitSuccess(T data) {
    safeEmit(CubitSuccess(data));
  }

  void emitError(dynamic error) {
    final result = ErrorHandler.handle<T>(error);
    result.fold(
      (failure) => safeEmit(CubitError(
        failure: failure,
        message: failure.message,
      )),
      (data) => emitSuccess(data),
    );
  }

  void emitEmpty({String? message}) {
    safeEmit(CubitEmpty(message: message ?? 'لا توجد بيانات'));
  }
}
