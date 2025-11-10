import 'package:flutter/material.dart';
import 'package:test_website_publishment/shared/widgets/styled_text.dart';

class StudentList extends StatelessWidget {
  final String name;
  final int age;

  const StudentList({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(100)),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            offset: Offset(1, 1),
            blurRadius: 1,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(1, 1),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          StyledText(
            value: '$name',
            label: 'Name',
            valueFontSize: 12,
            valueFontWeight: FontWeight.bold,
            labelFontSize: 10,
            labelFontWeight: FontWeight.bold,
          ),
          StyledText(
            value: '$age',
            label: 'Age',
            valueFontSize: 10,
            labelFontSize: 10,
          ),
        ],
      ),
    );
  }
}
