import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/widgets/large_button.dart';
import '../../../data/model/onboarding_model.dart';
import '../../manager/change_page_cubit/change_page_cubit.dart';

// ignore: camel_case_types
class onBoardingPage extends StatelessWidget {
  const onBoardingPage({Key? key, required this.model, required this.controller}) : super(key: key);
  final OnboardingModel model;
  final PageController controller ;
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        const SizedBox(
          height: 0,
        ),
        Text(model.title, style: Theme.of(context).textTheme.displayLarge),
        Expanded(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width / 1.9,
                      child: AspectRatio(
                          aspectRatio: 1 / 1, child: Image.asset(model.imgUrl))),
                  Text(
                    model.about,
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        LargeButton(
          onTap: () {
            if (BlocProvider.of<ChangePageCubit>(context).currentIndex != 2) {
              BlocProvider.of<ChangePageCubit>(context).changePage(controller: controller);
            } else {
              GoRouter.of(context).pushReplacement(RouterPath.addDataView);
            }
          },
          text: "التالي",
        ),
      ],
    );
  }
}