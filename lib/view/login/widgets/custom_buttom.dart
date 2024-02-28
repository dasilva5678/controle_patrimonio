// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Size? maximumSize;
  final bool enabled;
  final Size? minimumSize;
  final Gradient? backgroundGradient;
  final Color? borderColor;
  final TextStyle? style;
  final double borderRadius;
  CustomButtom({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.maximumSize,
    this.enabled = true,
    required this.minimumSize,
    this.backgroundGradient,
    this.borderColor,
    this.style,
    this.borderRadius = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !enabled,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          maximumSize: maximumSize,
          minimumSize: minimumSize,
          elevation: 0,
          animationDuration: const Duration(seconds: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          textStyle: style,
        ),
        child: Ink(
          decoration: BoxDecoration(
            gradient: backgroundGradient,
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Container(
            constraints: BoxConstraints(
              minWidth: minimumSize?.width ?? 88,
              minHeight: minimumSize?.height ?? 36,
            ),
            alignment: Alignment.center,
            child: Text(
              title,
              style: style,
            ),
          ),
        ),
      ),
    );
  }
}
