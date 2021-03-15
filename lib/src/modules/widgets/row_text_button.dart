import 'package:flutter/material.dart';

class RowTextButton extends StatelessWidget {
  final String text;
  const RowTextButton({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Icon(
            Icons.next_plan,
            size: 15,
            color: Color(0xff7F7F80),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
