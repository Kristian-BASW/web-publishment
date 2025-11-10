import 'package:flutter/material.dart';
import 'package:test_website_publishment/shared/widgets/styled_text_field.dart';

import 'models/student.dart';

class CreateStudentPage extends StatefulWidget {
  const CreateStudentPage({super.key});

  @override
  State<CreateStudentPage> createState() => _CreateStudentPageState();
}

class _CreateStudentPageState extends State<CreateStudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a student'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyledTextField(hint: 'Type a name', label: 'Name'),
          StyledTextField(hint: 'Type age of Student', label: 'Age'),
        ],
      ),
      bottomSheet: Expanded(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 10, 20),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, Student('test', 2));
                },
                child: Text('Test again'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
