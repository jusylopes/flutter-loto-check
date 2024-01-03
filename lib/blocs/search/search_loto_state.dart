part of 'search_loto_bloc.dart';

class SearchLotoState extends Equatable {
  const SearchLotoState({
    required this.status,
    this.lotteryResult,
    this.errorMessage,
  });

  final BlocStatus status;
  final ModelMegaSena? lotteryResult;
  final String? errorMessage;

  SearchLotoState copyWith({
    BlocStatus? status,
    ModelMegaSena? lotteryResult,
    String? errorMessage,
  }) {
    return SearchLotoState(
      status: status ?? this.status,
      lotteryResult: lotteryResult ?? this.lotteryResult,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, lotteryResult, errorMessage];
}
