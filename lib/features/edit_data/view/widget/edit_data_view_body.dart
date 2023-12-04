import 'package:flutter/material.dart';
import 'package:scooter_app/core/widgets/large_button.dart';

class EditDataViewBody extends StatelessWidget {
  const EditDataViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("اخر فحص ",style: Theme.of(context).textTheme.displaySmall,),
                        TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: "1000Km",
                          )
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("معلومات",style: Theme.of(context).textTheme.displaySmall,),
                        Text(" معلومات معلومات معلومات معلومات معلومات معلومات معلومات معلومات",style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.end),
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
          child: LargeButton(text: "حفظ",onTap: (){},),
        )
      ],
    );
  }
}
