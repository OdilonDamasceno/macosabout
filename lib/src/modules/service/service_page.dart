import 'package:flutter/material.dart';
import 'package:macosabout/src/widgets/row_text_button.dart';
import 'package:desktop_window/desktop_window.dart';

class ServicePage extends StatefulWidget {
  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  void initState() {
    DesktopWindow.setWindowSize(Size(590, 320));
    super.initState();
  }

  @override
  Widget build(BuildContext contextz) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 30, right: 30),
      child: Material(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 30,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset("assets/images/applecare.png"),
              ),
            ),
            Expanded(
              flex: 70,
              child: SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Every Mac comes with a limited warranty from Apple and up to 90 days of complimentary telephone technical support",
                      style: TextStyle(fontSize: 11),
                    ),
                    Text(
                      "If you gave purchased an AppleCare product, you get up to three years of expert telephone technical support and additional hardware service opctions from Apple. AppleCare product benefits are in additinal to any legal rights provided by consumer protection laws.",
                      style: TextStyle(fontSize: 11),
                    ),
                    Text(
                      "If you require repairs and you coverage has expired, you can have them performed by an Apple-authorized technician for a fee.",
                      style: TextStyle(fontSize: 11),
                    ),
                    RowTextButton(
                      text: "Check my service and support coverage status",
                    ),
                    RowTextButton(
                      text: "Show my service and repair options",
                    ),
                    RowTextButton(
                      text: "Tell me more about AppleCare products",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
