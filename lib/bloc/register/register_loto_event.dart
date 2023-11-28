part of 'register_loto_bloc.dart';

abstract class RegisterLotoEvent extends Equatable {
  const RegisterLotoEvent();
}

class CreateLottery extends RegisterLotoEvent {
  final MegaSenaModel newLottery;
  const CreateLottery({
    required this.newLottery,
  });

  @override
  List<Object> get props => [newLottery];
}

class GetAllLottery extends RegisterLotoEvent {
  const GetAllLottery();

  @override
  List<Object> get props => [];
}

class UpdateLottery extends RegisterLotoEvent {
  final MegaSenaModel updatedLottery;
  const UpdateLottery({
    required this.updatedLottery,
  });

  @override
  List<Object> get props => [updatedLottery];
}

class DeleteLottery extends RegisterLotoEvent {
  final String objectId;
  const DeleteLottery(this.objectId);

  @override
  List<Object> get props => [objectId];
}
