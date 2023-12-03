import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:scooter_app/core/resources/color_manager.dart';
import 'package:scooter_app/core/utils/app_router.dart';
import 'package:scooter_app/features/add_data/data/repo/data_repo_impl.dart';
import 'package:scooter_app/features/add_data/presentation/manager/add_data_cubit/add_data_cubit.dart';

import '../../../data/data_model/data_model.dart';

class AddDataViewBody extends StatefulWidget {
  const AddDataViewBody({Key? key}) : super(key: key);

  @override
  State<AddDataViewBody> createState() => _AddDataViewBodyState();
}

class _AddDataViewBodyState extends State<AddDataViewBody> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AddDataCubit, AddDataState>(
    listener: (context, state) {
      if(state is AddDataSuccess){
        GoRouter.of(context).pushReplacement(RouterPath.homeView);
      }
    },
    child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("ادخل عدد كيلوميترات اخر فحص او تغيير",style: Theme.of(context).textTheme.displayMedium,),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                children: [
                  const SizedBox(height: 20,),
                  FieldsRow(
                    field1Name: "زيت التروس",
                    field1onSaved: (value){
                      BlocProvider.of<AddDataCubit>(context).addData(name: "زيت التروس", lastChangeKm: value!);
                    },
                    field2Name: "زيت المحرك",
                    field2onSaved: (value){BlocProvider.of<AddDataCubit>(context).addData(name: "زيت المحرك", lastChangeKm: value!);},
                  ),
                  const SizedBox(height: 20,),
                  FieldsRow(
                    field1Name: "البوجيه",
                    field1onSaved: (value){BlocProvider.of<AddDataCubit>(context).addData(name: "البوجيه", lastChangeKm: value!);},
                    field2Name: "فلتر الهواء",
                    field2onSaved: (value){BlocProvider.of<AddDataCubit>(context).addData(name: "فلتر الهواء", lastChangeKm: value!);},
                  ),
                  const SizedBox(height: 20,),
                  FieldsRow(
                    field1Name: "سير السحب",
                    field1onSaved: (value){
                      BlocProvider.of<AddDataCubit>(context).addData(name: "سير السحب", lastChangeKm: value!);
                    },
                    field2Name: "ضغط الاطارات",
                    field2onSaved: (value){
                      BlocProvider.of<AddDataCubit>(context).addData(name: "ضغط الاطارات", lastChangeKm: value!);
                    },
                  ),
                  const SizedBox(height: 20,),
                  FieldsRow(
                    field1Name: "الفرامل الخلفيه",
                    field1onSaved: (value){
                      BlocProvider.of<AddDataCubit>(context).addData(name: "الفرامل الخلفيه", lastChangeKm: value!);
                    },
                    field2Name: "الفرامل الاماميه",
                    field2onSaved: (value){
                      BlocProvider.of<AddDataCubit>(context).addData(name: "الفرامل الاماميه", lastChangeKm: value!);
                    },
                  ),
                  const SizedBox(height: 20,),
                  FieldsRow(
                    field1Name: "البطاريه",
                    field1onSaved: (value){
                      BlocProvider.of<AddDataCubit>(context).addData(name: "البطاريه", lastChangeKm: value!);
                    },
                    field2Name: "نظام التعليق الامامي و الخلفي",
                    field2onSaved: (value){
                      BlocProvider.of<AddDataCubit>(context).addData(name: "نظام التعليق الامامي و الخلفي", lastChangeKm: value!);
                    },
                  ),
                ],
                  ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  // Process data.
                  _formKey.currentState!.save();

                }
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width / 2,
                height: 52,
                decoration: BoxDecoration(
                    color: ColorManager.redColor,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "حفظ",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
);
  }
}

class FieldsRow extends StatelessWidget {
  const FieldsRow({
    super.key, required this.field1Name, this.field1onSaved, required this.field2Name, this.field2onSaved,
  });
  final String field1Name;
  final void Function(String?)? field1onSaved;

  final String field2Name;
  final void Function(String?)? field2onSaved;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(field1Name,style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 10,),
            SizedBox(
                width: MediaQuery.sizeOf(context).width/2 - 40,
                child: TextFormField(
                  cursorColor: ColorManager.whiteColor,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "1000Km",
                  ),
                  onSaved: field1onSaved,
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return "الحقل مطلوب";
                    }else {
                      return null;
                    }
                  },
                )
            )
          ],
        ),
        const SizedBox(width: 10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(field2Name,style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 10,),
            SizedBox(
                width: MediaQuery.sizeOf(context).width/2 - 40,
                child: TextFormField(
                  cursorColor: ColorManager.whiteColor,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "1000Km",
                  ),
                  onSaved: field2onSaved,
                  validator: (value) {
                    if(value == null || value.isEmpty){
                      return "الحقل مطلوب";
                    }else {
                      return null;
                    }
                  },
                )
            )
          ],
        ),
      ],
    );
  }
}
