import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/home/home_page.dart';
import 'package:window_size/window_size.dart' as window;

class AboutMacApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    window.setWindowMinSize(Size(700, 500));
    window.setWindowMaxSize(Size(700, 500));
    return MaterialApp(
      title: "About",
      theme: ThemeData(
        backgroundColor: Color(0xffffffff),
        textTheme: TextTheme(),
      ),
      darkTheme: ThemeData.from(
        colorScheme: ColorScheme.dark(
          background: Color(0xff333333),
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xffDFDFE0),
          ),
        ),
      ),
      themeMode: ThemeMode.dark,
      home: HomePage(),
    );
  }
}
