import 'package:flutter/material.dart';

class StyledTextField extends StatefulWidget {
  final String hintText;

  const StyledTextField({super.key, required this.hintText});

  @override
  State<StyledTextField> createState() => _StyledTextFieldState();
}

class _StyledTextFieldState extends State<StyledTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintText: 'Type a name',
      ),
    );
  }
}
