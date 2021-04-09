import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:macosabout/src/modules/display/display_page.dart';
import 'package:macosabout/src/modules/home/home_controller.dart';
import 'package:macosabout/src/modules/overview/overview_page.dart';
import 'package:macosabout/src/modules/service/service_page.dart';
import 'package:macosabout/src/modules/storage/storage_page.dart';
import 'package:macosabout/src/modules/support/support_page.dart';
import 'package:macosabout/src/widgets/button_mac.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = HomeController();
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
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff424242),
                Color(0xff363637),
              ],
            ),
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
          SizedBox(
            height: height,
            child: SupportPage(),
          ),
          SizedBox(
            height: height,
            child: ServicePage(),
          ),
        ],
      ),
    );
  }
}
