import 'package:hive_flutter/adapters.dart';

import '../data_model/data_model.dart';
import 'data_repo.dart';

class DataRepoImpl implements DataRepo {
  @override
  void addData({required String name, required String lastChangeKm}) async {
    var dataBox = Hive.box<Data>("data");
    await dataBox.add(Data(name: name, lastChangeKm: lastChangeKm));
  }
}