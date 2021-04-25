import 'dart:async';

import 'package:flutter/material.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class ErrorHandler {
  static void setup() {
    print("SETTING UP eRROR HANDLER");
    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = (FlutterErrorDetails details) {
      //  FlutterError.dumpErrorToConsole(details);
      print("Caught error");
      FirebaseCrashlytics.instance.recordFlutterError(details);
      Zone.current.handleUncaughtError(details.exception, details.stack);
    };
  }

  static Future<void> reportError(Object error, StackTrace stackTrace) {
    print(">>>>> cAUGHT UP eRROR HANDLER");
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
    print("Caught Error $error");
  }
}
