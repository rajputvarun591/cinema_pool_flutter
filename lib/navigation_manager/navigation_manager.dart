

import 'package:cinema_pool/controller/home_controller.dart';
import 'package:cinema_pool/screen/home_screen.dart';
import 'package:flutter/material.dart';

class NavigationManager extends RouterDelegate with ChangeNotifier, PopNavigatorRouterDelegateMixin {

  late GlobalKey<NavigatorState> key;

  late HomeController homeController;

  NavigationManager({required this.homeController}) : key = GlobalKey<NavigatorState>() {
    homeController.addListener(notifyListeners);
  }

  @override
  void dispose() {
    super.dispose();
    homeController.removeListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: key,
      onPopPage: _onPopPage,
      pages: [
        HomeScreen.page(),
      ],
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => key;

  @override
  Future<void> setNewRoutePath(configuration) async => true;


  bool _onPopPage(Route route, result) {
    return true;
  }
}