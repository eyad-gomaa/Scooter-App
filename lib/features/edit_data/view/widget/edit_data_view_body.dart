import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:scooter_app/core/widgets/large_button.dart';
import 'package:scooter_app/features/home/presentation/manager/fetch_data_cubit/fetch_data_cubit.dart';

import '../../../add_data/data/data_model/data_model.dart';

class EditDataViewBody extends StatefulWidget {
  const EditDataViewBody({Key? key,required this.dataModel}) : super(key: key);
  final Data? dataModel;
  @override
  State<EditDataViewBody> createState() => _EditDataViewBodyState();
}
class _EditDataViewBodyState extends State<EditDataViewBody> {

  String? kmValue ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("اخر فحص ",style: Theme.of(context).textTheme.displaySmall,),
                        const SizedBox(height: 20,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "1000Km",
                          ),
                          onChanged: (value){
                            kmValue = value;
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("معلومات",style: Theme.of(context).textTheme.displaySmall,),
                        Text(" معلومات معلومات معلومات معلومات معلومات معلومات معلومات معلومات",style: Theme.of(context).textTheme.bodyMedium,),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: LargeButton(text: "حفظ",onTap: (){
              widget.dataModel!.lastChangeKm = kmValue ?? widget.dataModel!.lastChangeKm;
              widget.dataModel!.save();
              BlocProvider.of<FetchDataCubit>(context).fetchData();
              GoRouter.of(context).pop();
          },),
        )
      ],
    );
  }
}
