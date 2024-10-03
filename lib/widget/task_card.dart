import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/apps_color.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({
    super.key,
  });

  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title of the task',
                style: Theme.of(context).textTheme.titleSmall),
            Text('Description'),
            SizedBox(
              height: 5,
            ),
            Text('Date: 12/12/2024'),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTaskStatusChip(),
                Wrap(
                  children: [
                    IconButton(onPressed: () {
                      _onTapEditButton();
                    }, icon: const Icon(Icons.edit)),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.delete)),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _onTapEditButton(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Edit Status'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: ['New','Completed','Cancelled','Progress'].map((e){
            return ListTile(
              onTap: (){},
              title: Text(e),
            );
          }).toList(),

        ),
        actions: [
          TextButton( onPressed: (){
            Navigator.pop(context);
          },child: Text('Cancel'),),
          TextButton( onPressed: (){

          },child: Text('Ok'),),

        ],
      );
    });

  }

  void _onTapDeleteButton(){

  }

  Widget _buildTaskStatusChip() {
    return Chip(
      label: Text(
        'New',
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: AppsColor.themecolor,
          )),
    );
  }
}
