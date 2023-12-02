import 'package:flutter/material.dart';
import 'package:scooter_app/core/resources/color_manager.dart';
import 'package:scooter_app/features/onboarding/data/model/onboarding_model.dart';

import '../../../../core/resources/string_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

PageController _controller = PageController();
int _currentIndex = 0;
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
  Page(
    model: _onboardingModels[0],
  ),
  Page(
    model: _onboardingModels[1],
  ),
  Page(
    model: _onboardingModels[2],
  ),
];

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: PageView(
            controller: _controller,
            physics: const NeverScrollableScrollPhysics(),
            children: _pages,
          ),
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  const Page({Key? key, required this.model}) : super(key: key);
  final OnboardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(height: 0,),
        Text(model.title,style: Theme.of(context).textTheme.displayLarge),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width/1.9,
                child: AspectRatio(
                  aspectRatio: 1/1,
                    child: Image.asset(model.imgUrl))
            ),
            Text(model.about,style: Theme.of(context).textTheme.bodyMedium,textAlign: TextAlign.center,),
          ],
        ),
        GestureDetector(
          onTap: (){
            if(_currentIndex != 2){
              _currentIndex += 1;
              _controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeIn);
            }else{

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
                "التالي",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
          ),
        )
      ],
    );
  }
}
