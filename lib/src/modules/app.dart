import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/home/home_page.dart';

class AboutMacApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: Color(0xffffffff),
        textTheme: TextTheme(),
      ),
      darkTheme: ThemeData.from(
        colorScheme: ColorScheme.dark(
          background: Color(0xff333333),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
