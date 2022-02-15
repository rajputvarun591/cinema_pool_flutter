import 'dart:developer';

import 'package:cinema_pool/controller/home_controller.dart';
import 'package:cinema_pool/mock_service/home_service.dart';
import 'package:cinema_pool/navigation_manager/navigation_manager.dart';
import 'package:cinema_pool/network/tmdb_service.dart';
import 'package:cinema_pool/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen(_listen);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late NavigationManager navigationManager;
  final HomeController _homeController = HomeController();

  @override
  void initState() {
    super.initState();
    navigationManager = NavigationManager(homeController: _homeController);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => _homeController..getTrendingMovies()),
      ],
      child: MaterialApp(
        title: 'Cinema Pool',
        theme: normalTheme,
        home: Router(
          routerDelegate: navigationManager,
          backButtonDispatcher: RootBackButtonDispatcher(),
        ),
      ),
    );
  }
}

void _listen(LogRecord rec) {
  log('${rec.level.name}: ${rec.time}: ${rec.message}');
}
