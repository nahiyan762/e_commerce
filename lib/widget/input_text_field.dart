import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  final String hintText;
  const InputTextField(this.hintText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14)
      ),
    );
  }
}
