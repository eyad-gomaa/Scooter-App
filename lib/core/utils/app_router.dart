import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scooter_app/features/add_data/data/data_model/data_model.dart';

import '../../features/add_data/presentation/view/add_data_view.dart';
import '../../features/edit_data/view/edit_data_view.dart';
import '../../features/home/presentation/view/home_view.dart';
import '../../features/onboarding/presentation/view/onboarding_view.dart';
import '../../features/splash/presentation/view/splash_view.dart';
class RouterPath{
  static const splashView = "/";
  static const onboardingView = "/onboardingView";
  static const homeView = "/homeView";
  static const addDataView = "/addDataView";
  static const editDataView = "/editDataView";
}
final GoRouter router = GoRouter(
    routes: [
    //************* SplashScreen *************
    GoRoute(
    path: RouterPath.splashView,
    builder: (BuildContext context, GoRouterState state) =>
    const SplashView()),
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
      GoRoute(
    path: RouterPath.editDataView,
    builder: (BuildContext context, GoRouterState state) => EditDataView(dataModel: state.extra as Data),
      ),
    ]
);