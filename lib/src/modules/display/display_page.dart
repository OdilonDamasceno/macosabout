import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/widgets/button_mac.dart';

class DisplayPage extends StatelessWidget {
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
              "20,5-inch (1280 x 720)",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              "Display 3MB",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
                width: 150, child: ButtonMac("Display Preferences...")),
          ),
        ),
      ],
    );
  }
}
