
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/add_data/data/repo/data_repo.dart';
part 'add_data_state.dart';

class AddDataCubit extends Cubit<AddDataState> {
  AddDataCubit({required this.repo}) : super(AddDataInitial());
  final DataRepo repo;
  void addData({required String name, required String lastChangeKm}){
    repo.addData(name: name, lastChangeKm: lastChangeKm);
    emit(AddDataSuccess());
  }
}
