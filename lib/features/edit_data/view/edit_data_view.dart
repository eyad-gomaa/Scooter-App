
import 'package:flutter/material.dart';
import 'package:scooter_app/features/edit_data/view/widget/edit_data_view_body.dart';

class EditDataView extends StatelessWidget {
  const EditDataView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text("تعديل",style: Theme.of(context).textTheme.displayMedium,),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: EditDataViewBody(),
        ),
      ),
    );
  }
}
