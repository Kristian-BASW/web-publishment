import 'package:flutter/material.dart';
import 'package:test_website_publishment/shared/widgets/styled_text_field.dart';

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

      body: Container(
        color: Colors.transparent,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(20),
                child: StyledTextField(hintText: 'Type a name'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
