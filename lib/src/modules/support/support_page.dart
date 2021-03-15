import 'package:flutter/material.dart';
import 'package:macosabout/src/modules/widgets/row_text_button.dart';

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
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
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
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black,
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
