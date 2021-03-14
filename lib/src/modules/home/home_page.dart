import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:macosabout/src/modules/display/display_page.dart';
import 'package:macosabout/src/modules/home/home_controller.dart';
import 'package:macosabout/src/modules/overview/overview_page.dart';
import 'package:macosabout/src/modules/storage/storage_page.dart';
import 'package:macosabout/src/modules/widgets/button_mac.dart';
import 'package:desktop_window/desktop_window.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController _controller = HomeController();
  @override
  void initState() {
    DesktopWindow.setMaxWindowSize(Size(600, 380)).then((value) => null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    List<Widget> _appBarItens = [
      ButtonMac(
        "Overview",
        roundedRight: false,
        onTap: () => _controller.goToPage(0),
      ),
      ButtonMac(
        "Display",
        roundedLeft: false,
        roundedRight: false,
        onTap: () => _controller.goToPage(1),
      ),
      ButtonMac(
        "Storage",
        roundedLeft: false,
        roundedRight: false,
        onTap: () => _controller.goToPage(2),
      ),
      ButtonMac(
        "Support",
        roundedLeft: false,
        roundedRight: false,
        onTap: () => _controller.goToPage(3),
      ),
      ButtonMac(
        "Service",
        roundedLeft: false,
        onTap: () => _controller.goToPage(4),
      ),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(width, 40),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            border: Border(
              bottom: BorderSide(color: Color(0xff0f0f0f), width: 1.3),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: _appBarItens,
            ),
          ),
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _controller.pageController,
        children: [
          SizedBox(
            height: height,
            child: OverviewPage(),
          ),
          SizedBox(
            height: height,
            child: DisplayPage(),
          ),
          SizedBox(
            height: height,
            child: StoragePage(),
          ),
          SizedBox(),
          SizedBox(),
        ],
      ),
    );
  }
}
