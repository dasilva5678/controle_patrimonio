// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BackgroundColorGradient extends StatefulWidget {
  final List<Widget> children;
  const BackgroundColorGradient({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  State<BackgroundColorGradient> createState() =>
      _BackgroundColorGradientState();
}

class _BackgroundColorGradientState extends State<BackgroundColorGradient> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 76, 133, 180),
            Colors.blue.shade900,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.2, 0.8],
        ),
      ),
      child: Center(
        child: Stack(
          children: widget.children,
        ),
      ),
    );
  }
}
