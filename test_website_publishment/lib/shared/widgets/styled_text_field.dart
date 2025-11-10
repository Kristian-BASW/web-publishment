import 'package:flutter/material.dart';

class StyledTextField extends StatefulWidget {
  final String hint;
  final String? label;

  const StyledTextField({super.key, required this.hint, this.label});

  @override
  State<StyledTextField> createState() => _StyledTextFieldState();
}

class _StyledTextFieldState extends State<StyledTextField> {
  @override
  StyledTextField get widget => super.widget;

  String hint = '';
  String? label = '';
  String value = '';

  @override
  void initState() {
    super.initState();
    hint = widget.hint;
    label = widget.label;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (label != null)
          Container(
            padding: EdgeInsets.fromLTRB(15, 20, 15, 3),
            child: Text(label ?? '', style: TextStyle(color: Colors.blueGrey)),
          ),
        Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: TextField(
            enableSuggestions: true,
            decoration: InputDecoration(
              fillColor: Colors.black,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              hintText: this.hint,
            ),
            onChanged: (value) {
              setState(() {
                this.value = value;
              });
              print(value);
            },
          ),
        ),
      ],
    );
  }
}
