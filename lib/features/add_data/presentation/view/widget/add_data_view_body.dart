import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scooter_app/core/utils/app_router.dart';
import 'package:scooter_app/features/add_data/presentation/manager/add_data_cubit/add_data_cubit.dart';
import 'package:scooter_app/features/add_data/presentation/view/widget/add_data_form.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/widgets/large_button.dart';

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
        if (state is AddDataSuccess) {
          GoRouter.of(context).pushReplacement(RouterPath.homeView);
        }
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "ادخل عدد كيلوميترات اخر فحص او تغيير",
              style: Theme.of(context).textTheme.displaySmall,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: AddDataForm(formKey: _formKey,)
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: LargeButton(
                onTap: () async{
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    final SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.setString('dataAdded', "true");
                  }
                },
                text: "التالي",
              ))
        ],
      ),
    );
  }
}
