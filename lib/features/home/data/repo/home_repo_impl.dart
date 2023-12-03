import 'package:hive_flutter/adapters.dart';
import 'package:scooter_app/features/add_data/data/data_model/data_model.dart';
import 'package:scooter_app/features/home/data/repo/home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  List<Data> getData() {
    var dataBox = Hive.box<Data>("data");
    List<Data> dataList = dataBox.values.toList();
    return dataList;
  }

}