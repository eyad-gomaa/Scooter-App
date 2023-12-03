import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/home/data/repo/home_repo.dart';
import '../../../../add_data/data/data_model/data_model.dart';
import 'fetch_data_state.dart';


class FetchDataCubit extends Cubit<FetchDataState> {
  FetchDataCubit(this.repo) : super(FetchDataInitial());
  final HomeRepo repo;
   void fetchData(){
     List<Data> dataList = repo.getData();
     emit(FetchDataSuccess(dataList: dataList));
   }
}
