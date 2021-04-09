import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/overview/overview_controller.dart';
import 'package:macosabout/src/widgets/button_mac.dart';
import 'package:macosabout/src/widgets/text_rich_mac.dart';

class OverviewPage extends StatefulWidget {
  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  final OverviewController _overviewController = OverviewController.init();
  void initState() {
    DesktopWindow.setWindowSize(Size(590, 420));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/catalina.png"),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 50),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextRichMac(
                      first: _overviewController.kernelName + " ",
                      last: _overviewController.os,
                      fontSize: 22,
                    ),
                    TextRichMac(
                      first: "Version ",
                      last: _overviewController.version,
                    ),
                    SizedBox(height: 20),
                    TextRichMac(
                      first: _overviewController.chassisVersion,
                    ),
                    SizedBox(height: 5),
                    TextRichMac(
                      first: "Processor  ",
                      last: _overviewController.cpu,
                    ),
                    SizedBox(height: 5),
                    TextRichMac(
                      first: "Memory  ",
                      last: _overviewController.memory + " GB DDR4",
                    ),
                    SizedBox(height: 5),
                    TextRichMac(
                      first: "Startup Disk  ",
                      last: _overviewController.startupDisk,
                    ),
                    SizedBox(height: 5),
                    TextRichMac(
                      first: "Graphics  ",
                      last: _overviewController.gpu,
                    ),
                    SizedBox(height: 5),
                    TextRichMac(
                      first: "Serial Number  ",
                      last: _overviewController.boardName,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        ButtonMac("System Report..."),
                        SizedBox(width: 15),
                        ButtonMac("Software Update..."),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Text(
            "™ and © 2020-2020 Skey Inc. All Rights Reserved. Licence Agreement",
            style: TextStyle(
              fontSize: 10,
              color: Color(0xff767676),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
