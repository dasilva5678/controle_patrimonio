// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BackgroundColorGradient extends StatefulWidget {
  final List<Widget> children;
  final Widget? child;
  final Widget? header;
  const BackgroundColorGradient({
    Key? key,
    required this.children,
    this.child,
    this.header,
  }) : super(key: key);

  @override
  State<BackgroundColorGradient> createState() =>
      _BackgroundColorGradientState();
}

class _BackgroundColorGradientState extends State<BackgroundColorGradient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 99, 198, 231),
            Color(0xFF008080),
          ],
          stops: [0.0, 0.7],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (widget.header != null) widget.header!,
          Center(
            child: Stack(
              children: widget.children,
            ),
          ),
          if (widget.child != null) widget.child!,
        ],
      ),
    );
  }
}
