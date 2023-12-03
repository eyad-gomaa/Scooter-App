import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/add_data/presentation/view/add_data_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
class RouterPath{
  static const onboardingView = "/";
  static const homeView = "/homeView";
  static const addDataView = "/addDataView";
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
      GoRoute(
    path: RouterPath.addDataView,
    builder: (BuildContext context, GoRouterState state) =>
    const AddDataView()),
    ]
);