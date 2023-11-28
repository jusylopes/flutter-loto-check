import 'package:equatable/equatable.dart';
import 'package:flutter_loto_check/bloc/enum/bloc_status.dart';
import 'package:flutter_loto_check/model/mega_sena_model.dart';
import 'package:flutter_loto_check/repository/loto_reporitory.dart';
import 'register_blocs_exports.dart';

part 'register_loto_event.dart';
part 'register_loto_state.dart';

class RegisterLotoBloc extends Bloc<RegisterLotoEvent, RegisterLotteryState> {
  RegisterLotoBloc({required this.repository})
      : super(const RegisterLotteryState(status: BlocStatus.initial)) {
    on<GetAllLottery>(_onGeLotteryRegister);
    on<CreateLottery>(_onAddLottery);
    on<UpdateLottery>(_onUpdateLottery);
    on<DeleteLottery>(_onDeleteCep);
  }

  final LotteryRepository repository;

  void _onGeLotteryRegister(
      GetAllLottery event, Emitter<RegisterLotteryState> emit) async {}

  void _onAddLottery(
      CreateLottery event, Emitter<RegisterLotteryState> emit) async {}

  void _onUpdateLottery(
      UpdateLottery event, Emitter<RegisterLotteryState> emit) async {}

  void _onDeleteCep(
      DeleteLottery event, Emitter<RegisterLotteryState> emit) async {}
}
