
import '../../../../add_data/data/data_model/data_model.dart';

abstract class FetchDataState {}

class FetchDataInitial extends FetchDataState {}
class FetchDataSuccess extends FetchDataState {
  final List<Data> dataList;

  FetchDataSuccess({required this.dataList});
}
