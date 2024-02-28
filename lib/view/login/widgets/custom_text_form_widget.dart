// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  final String label;
  final String title;
  final double borderRadius;
  final Widget? suffixIcon;
  const TextFormWidget({
    Key? key,
    required this.label,
    required this.title,
    required this.borderRadius,
    this.suffixIcon,
  }) : super(key: key);

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
        SizedBox(
          height: 55,
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: widget.label,
              labelStyle: const TextStyle(
                color: Colors.blueGrey,
              ),
              suffixIcon: widget.suffixIcon,
              enabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: const BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: const BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: const BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.borderRadius)),
                borderSide: const BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
              errorStyle: const TextStyle(
                color: Colors.blueGrey,
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
