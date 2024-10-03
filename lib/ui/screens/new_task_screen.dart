import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/new_task_add_screen.dart';
import 'package:task_manager_app/widget/task_card.dart';
import 'package:task_manager_app/widget/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildSummarySection(),
          Expanded(
              child: ListView.separated(
            itemCount: 10,
            itemBuilder: (context, index) {
              return TaskCard();
            },
            separatorBuilder: (BuildContext context, index) {
              return const SizedBox(
                height: 8,
              );
            },
          ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _floatingActionButtonAdd();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Padding buildSummarySection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TaskSummaryCard(
              title: 'New',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Completed',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Cancel',
              count: 9,
            ),
            TaskSummaryCard(
              title: 'Progress',
              count: 9,
            ),
          ],
        ),
      ),
    );
  }

  void _floatingActionButtonAdd() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return NewTaskAddScreen();
    }));
  }
}


