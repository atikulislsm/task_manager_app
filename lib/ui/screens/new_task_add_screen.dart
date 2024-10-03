import 'package:flutter/material.dart';
import 'package:task_manager_app/widget/tm_app_bar_widget.dart';

class NewTaskAddScreen extends StatefulWidget {
  const NewTaskAddScreen({super.key});

  @override
  State<NewTaskAddScreen> createState() => _NewTaskAddScreenState();
}

class _NewTaskAddScreenState extends State<NewTaskAddScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(48.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('New Task',style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),),
            const SizedBox(height: 24,),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'email',
                fillColor: Colors.white10,
              ),
            ),
            const SizedBox(height: 5,),
            TextFormField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText:'Description',
                fillColor: Colors.white10,
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              _nextAddTaskButton();
            }, child: Icon(Icons.arrow_forward_ios_outlined))
          ],
        ),
      ),
    );
  }
  void _nextAddTaskButton(){
    //todo implement next task Add button
  }
}
