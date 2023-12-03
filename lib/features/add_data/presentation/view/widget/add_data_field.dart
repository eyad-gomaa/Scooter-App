import 'package:flutter/material.dart';
import 'package:scooter_app/core/resources/color_manager.dart';

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