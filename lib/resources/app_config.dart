import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String appTitle;
  final BuildFlavor buildFlavor;
  final Widget child;

  AppConfig({this.appTitle, this.buildFlavor, this.child});

  static AppConfig of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType(aspect: AppConfig());

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return false;
  }
}

enum BuildFlavor { DEV, PROD }
