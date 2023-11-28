part of 'register_loto_bloc.dart';

class RegisterLotteryState<T> extends Equatable {
  const RegisterLotteryState({
    required this.status,
    this.data,
    this.errorMessage,
  });

  final BlocStatus status;
  final T? data;
  final String? errorMessage;

  RegisterLotteryState copyWith({
    BlocStatus? status,
    T? data,
    String? errorMessage,
  }) {
    return RegisterLotteryState(
      status: status ?? this.status,
      data: data ?? this.data,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, data, errorMessage];
}
