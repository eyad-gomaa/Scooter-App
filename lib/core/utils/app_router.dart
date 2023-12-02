import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/home/presentation/view/home_view.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
class RouterPath{
  static const onboardingView = "/";
  static const homeView = "/homeView";
}
final GoRouter router = GoRouter(
    routes: [
    //************* SplashScreen *************
    GoRoute(
    path: RouterPath.homeView,
    builder: (BuildContext context, GoRouterState state) =>
    const HomeView()),
      GoRoute(
    path: RouterPath.onboardingView,
    builder: (BuildContext context, GoRouterState state) =>
    const OnBoardingView()),
    ]
);