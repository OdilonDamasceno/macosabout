import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/display/display_controller.dart';
import 'package:macosabout/src/widgets/button_mac.dart';

class DisplayPage extends StatelessWidget {
  final DisplayController _controller = DisplayController.init();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Image.asset("assets/images/monitor.png"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Display",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              "${_controller.iches}-inch (${_controller.resolution})",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              _controller.gpu,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              width: 150,
              child: ButtonMac("Display Preferences..."),
            ),
          ),
        ),
      ],
    );
  }
}
