
import 'package:flutter/material.dart';
import 'package:scooter_app/features/add_data/data/data_model/data_model.dart';
import 'package:scooter_app/features/edit_data/view/widget/edit_data_view_body.dart';

class EditDataView extends StatelessWidget {
  const EditDataView({Key? key,required this.dataModel}) : super(key: key);
  final Data dataModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("تعديل",),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: EditDataViewBody(dataModel: dataModel),
        ),
      ),
    );
  }
}
