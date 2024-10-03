import 'package:flutter/material.dart';
import 'package:task_manager_app/widget/task_card.dart';

class ProgressTaskScreen extends StatelessWidget {
  const ProgressTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return TaskCard();
      },
      separatorBuilder: (BuildContext context, index) {
        return const SizedBox(
          height: 8,
        );
      },
    );
  }
}
