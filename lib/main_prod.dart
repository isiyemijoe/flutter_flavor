import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutternotify/resources/app_config.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutternotify/services/error_handler.dart';

import 'main.dart';

main() async {
  var appConfig = AppConfig(
      appTitle: "Flutter Notify Prod",
      buildFlavor: BuildFlavor.PROD,
      child: MyApp());

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    ErrorHandler.setup();
    runApp(appConfig);
  }, ErrorHandler.reportError);
}
