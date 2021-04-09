import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/display/display_controller.dart';
import 'package:macosabout/src/widgets/button_mac.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  final DisplayController _controller = DisplayController.init();

  @override
  void initState() {
    DesktopWindow.setWindowSize(Size(590, 380));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(child: Image.asset("assets/images/monitor.png")),
          Flexible(
            child: Text.rich(
              TextSpan(
                text: "Display\n",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text:
                        "${_controller.iches}-inch (${_controller.resolution})\n",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                  TextSpan(
                    text: _controller.gpu + "\n",
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 150,
              child: ButtonMac("Display Preferences..."),
            ),
          ),
        ],
      ),
    );
  }
}
