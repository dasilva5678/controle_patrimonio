// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextFormWidget extends StatefulWidget {
  final double height;
  final String? label;
  final String? title;
  final bool isTitle;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
   TextFormWidget({
    Key? key,
    this.height = 50,
    this.label = "",
    this.title,
    this.isTitle = false,
    this.controller,
    this.validator,
  }) : super(key: key);

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.isTitle
                ? Text(
                    widget.title ?? "",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  )
                : Container(),
            SizedBox(
              height: widget.height,
              child: TextFormField(
                controller: widget.controller,
                validator: widget.validator,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: widget.label,
                  labelStyle: const TextStyle(
                    color: Colors.blueGrey,
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  focusedErrorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  disabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
