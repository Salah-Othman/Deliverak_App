import 'package:equatable/equatable.dart';
import 'failure.dart';

abstract class CubitState extends Equatable {
  const CubitState();

  @override
  List<Object?> get props => [];
}

class CubitInitial extends CubitState {
  const CubitInitial();
}

class CubitLoading extends CubitState {
  final String? message;
  const CubitLoading({this.message});

  @override
  List<Object?> get props => [message];
}

class CubitSuccess<T> extends CubitState {
  final T data;
  const CubitSuccess(this.data);

  @override
  List<Object?> get props => [data];
}

class CubitError extends CubitState {
  final Failure failure;
  final String message;
  const CubitError({required this.failure, required this.message});

  @override
  List<Object?> get props => [failure, message];
}

class CubitEmpty extends CubitState {
  final String message;
  const CubitEmpty({this.message = 'لا توجد بيانات'});

  @override
  List<Object?> get props => [message];
}
