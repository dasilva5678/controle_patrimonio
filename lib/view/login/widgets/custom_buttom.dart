import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Size? maximumSize;
  final bool enabled;
  final Size? minimumSize;
  final Color? backgroundColor;
  final Color? borderColor;
  final TextStyle? style;
  final double borderRadius;
  CustomButtom({
    super.key,
    required this.title,
    required this.onPressed,
    required this.maximumSize,
    required this.minimumSize,
    this.enabled = true,
    this.backgroundColor,
    this.borderColor,
    this.style,
    this.borderRadius = 3,
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          maximumSize: maximumSize,
          minimumSize: minimumSize,
          side: BorderSide(
            width: 1.0,
            color: borderColor ?? Colors.transparent,
          ),
          elevation: 0,
          animationDuration: Duration(seconds: 10),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: FittedBox(
          child: Text(
            title,
            style: style,
          ),
        ),
      ),
    );
  }
}
