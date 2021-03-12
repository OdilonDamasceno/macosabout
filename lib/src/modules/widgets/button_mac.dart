import 'package:flutter/material.dart';

class ButtonMac extends StatelessWidget {
  final String text;
  final bool roundedLeft;
  final bool roundedRight;
  final bool isSelected;
  final void Function() onTap;
  ButtonMac(
    this.text, {
    this.roundedLeft = true,
    this.roundedRight = true,
    this.isSelected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: 1,
          horizontal: 8,
        ),
        decoration: BoxDecoration(
          color: isSelected ? Color(0xffC6C6C6) : Color(0xff656666),
          borderRadius: BorderRadius.horizontal(
            left: roundedLeft ? Radius.circular(4) : Radius.zero,
            right: roundedRight ? Radius.circular(4) : Radius.zero,
          ),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11,
            color: isSelected ? _theme.backgroundColor : Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
