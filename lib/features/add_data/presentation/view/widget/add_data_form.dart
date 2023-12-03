import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scooter_app/features/add_data/presentation/view/widget/add_data_field.dart';
import '../../manager/add_data_cubit/add_data_cubit.dart';

class AddDataForm extends StatelessWidget {
  const AddDataForm({Key? key, required this.formKey}) : super(key: key);
  final Key formKey;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          FieldsRow(
            field1Name: "زيت التروس",
            field1onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context)
                  .addData(name: "زيت التروس", lastChangeKm: value!);
            },
            field2Name: "زيت المحرك",
            field2onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context)
                  .addData(name: "زيت المحرك", lastChangeKm: value!);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          FieldsRow(
            field1Name: "البوجيه",
            field1onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context)
                  .addData(name: "البوجيه", lastChangeKm: value!);
            },
            field2Name: "فلتر الهواء",
            field2onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context)
                  .addData(name: "فلتر الهواء", lastChangeKm: value!);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          FieldsRow(
            field1Name: "سير السحب",
            field1onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context)
                  .addData(name: "سير السحب", lastChangeKm: value!);
            },
            field2Name: "ضغط الاطارات",
            field2onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context).addData(
                  name: "ضغط الاطارات", lastChangeKm: value!);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          FieldsRow(
            field1Name: "الفرامل الخلفيه",
            field1onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context).addData(
                  name: "الفرامل الخلفيه", lastChangeKm: value!);
            },
            field2Name: "الفرامل الاماميه",
            field2onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context).addData(
                  name: "الفرامل الاماميه", lastChangeKm: value!);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          FieldsRow(
            field1Name: "البطاريه",
            field1onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context)
                  .addData(name: "البطاريه", lastChangeKm: value!);
            },
            field2Name: "نظام التعليق الامامي و الخلفي",
            field2onSaved: (value) {
              BlocProvider.of<AddDataCubit>(context).addData(
                  name: "نظام التعليق الامامي و الخلفي",
                  lastChangeKm: value!);
            },
          ),
        ],
      ),
    );
  }
}
