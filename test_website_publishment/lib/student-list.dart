import 'package:flutter/material.dart';

class StudentList extends StatelessWidget {
  final String name;
  final double age;
  const StudentList({super.key, required this.name, required this.age});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('Name: $name'), Text('Age: $age')],
      ),
    );
  }
}
