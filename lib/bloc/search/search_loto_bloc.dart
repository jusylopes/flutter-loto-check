import 'package:equatable/equatable.dart';
import 'package:flutter_loto_check/bloc/enum/bloc_status.dart';
import 'package:flutter_loto_check/model/mega_sena_model.dart';
import 'package:flutter_loto_check/repository/loto_reporitory.dart';

import 'search_loto_blocs_exports.dart';
part 'search_loto_event.dart';
part 'search_loto_state.dart';

class SearchLotoBloc extends Bloc<SearchLotoEvent, SearchLotoState> {
  SearchLotoBloc({required this.repository})
      : super(const SearchLotoState(status: BlocStatus.initial)) {
    on<GetLotteryResult>(_onGetLottery);
  }

  final LotteryRepository repository;
  void _onGetLottery(
      GetLotteryResult event, Emitter<SearchLotoState> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    try {
      MegaSenaModel responseApiCaixa =
          await repository.fetchLottery(numberLottery: event.numberLottery);

      emit(state.copyWith(
        status: BlocStatus.success,
        lotteryResult: responseApiCaixa,
      ));
    } catch (error) {
      emit(state.copyWith(
          status: BlocStatus.error, errorMessage: 'Error loading data...'));
    }
  }
}
