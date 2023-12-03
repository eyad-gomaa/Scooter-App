
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/resources/string_manager.dart';
import '../../../data/model/onboarding_model.dart';
import '../../manager/change_page_cubit/change_page_cubit.dart';
import 'onboarding_page.dart';
// ignore: camel_case_types
class onboardingViewBody extends StatefulWidget {
  const onboardingViewBody({Key? key}) : super(key: key);

  @override
  State<onboardingViewBody> createState() => _onboardingViewBodyState();
}
PageController _controller = PageController();
final List<OnboardingModel> _onboardingModels = [
  OnboardingModel(
      title: StringManager.onboarding1Title,
      imgUrl: "assets/images/Delivery-amico.png",
      about: StringManager.onboardingAbout),
  OnboardingModel(
      title: StringManager.onboarding2Title,
      imgUrl: "assets/images/Instruction_manual.png",
      about: StringManager.onboardingAbout),
  OnboardingModel(
      title: StringManager.onboarding3Title,
      imgUrl: "assets/images/mechanic.png",
      about: StringManager.onboardingAbout)
];
final List<Widget> _pages = [
  onBoardingPage(
    model: _onboardingModels[0],
      controller: _controller
  ),
  onBoardingPage(
    model: _onboardingModels[1],
      controller: _controller
  ),
  onBoardingPage(
    model: _onboardingModels[2],
      controller: _controller
  ),
];

// ignore: camel_case_types
class _onboardingViewBodyState extends State<onboardingViewBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: BlocProvider(
            create: (context) => ChangePageCubit(),
            child: PageView(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              children: _pages,
            ),
          ),
        ),
      ),
    );
  }
}
