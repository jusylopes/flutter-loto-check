part of 'search_loto_bloc.dart';

abstract class SearchLotoEvent extends Equatable {
  const SearchLotoEvent();
}

class GetLotteryResult extends SearchLotoEvent {
  final int numberLottery;
  const GetLotteryResult({
    required this.numberLottery,
  });

  @override
  List<Object> get props => [numberLottery];
}
