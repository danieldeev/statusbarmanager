library statusbarmanager;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarManager extends StatelessWidget {
  final Widget child;

  final bool translucent;

  final Color? statusBarColor;
  final Brightness? statusBarIconBrightness;
  final Brightness? statusBarBrightness;

  final Color? navigationBarColor;
  final Brightness? navigationBarBrightness;
  final Color? navigationBarDividerColor;

  StatusBarManager({
    Key? key,
    required this.child,
    required this.translucent,
    this.statusBarColor,
    this.statusBarIconBrightness,
    this.statusBarBrightness,
    this.navigationBarColor,
    this.navigationBarBrightness,
    this.navigationBarDividerColor,
  }) : super(key: key);

  void _customStatusBar() {
    return SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: this.navigationBarBrightness,
      statusBarColor: this.statusBarColor,
      statusBarBrightness: this.statusBarBrightness,
      systemNavigationBarColor: this.navigationBarColor,
      systemNavigationBarIconBrightness: this.navigationBarBrightness,
      systemNavigationBarDividerColor: this.navigationBarDividerColor,
    ));
  }

  Widget build(BuildContext context) {
    _customStatusBar();
    return this.translucent ? this.child : SafeArea(child: this.child);
  }
}
