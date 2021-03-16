import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/app.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main(List<String> args) {
  debugDefaultTargetPlatformOverride = TargetPlatform.linux;
  runApp(AboutMacApp());
}
