import 'package:flutter/material.dart';
import 'package:macosabout/src/widgets/row_text_button.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  "macOS Resources",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      "assets/images/logo_app.png",
                      filterQuality: FilterQuality.high,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RowTextButton(text: "macOS Help"),
                      RowTextButton(text: "User Manual"),
                      RowTextButton(text: "macOS Support"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: 0.2,
            color: Colors.white,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  "Mac Resources",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("assets/images/macpc.png"),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RowTextButton(text: "Specifications"),
                      RowTextButton(text: "Hardware Support"),
                      RowTextButton(text: "Important Information"),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
