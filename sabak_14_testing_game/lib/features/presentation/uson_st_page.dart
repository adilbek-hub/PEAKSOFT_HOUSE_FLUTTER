import 'package:flutter/material.dart';
import 'package:sabak_14_testing_game/features/data/model/test_model.dart';

class UsonStudentPage extends StatelessWidget {
  const UsonStudentPage({super.key, required this.student});
  final List<Students> student;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Uson'),
      ),
    );
  }
}
