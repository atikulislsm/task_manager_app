import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/cancel_task_screen.dart';
import 'package:task_manager_app/ui/screens/completed_task_screen.dart';
import 'package:task_manager_app/ui/screens/new_task_screen.dart';
import 'package:task_manager_app/ui/screens/progress_task_screen.dart';
import 'package:task_manager_app/utils/apps_color.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}
int _selectedIndex=0;
final List<Widget> _screens=[
  NewTaskScreen(),
  CompletedTaskScreen(),
  CancelTaskScreen(),
  ProgressTaskScreen()
];

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppsColor.themecolor,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
            const SizedBox(width: 5,),
            Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Atikul Islam',style: TextStyle(fontSize: 14,color: Colors.white,fontWeight: FontWeight.w600),),
                Text('atikul.islam.atik@gmail.com',style: TextStyle(fontSize: 10,color: Colors.white),),
              ],
            ),
            ),
            IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
          ],
        ),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
          onDestinationSelected: (int index){
          _selectedIndex=index;
          setState(() {
          });
          },
          destinations:const[
        NavigationDestination(icon: Icon(Icons.new_label), label: 'New'),
        NavigationDestination(icon: Icon(Icons.check_box), label: 'Completed'),
        NavigationDestination(icon: Icon(Icons.cancel_outlined), label: 'Cancel'),
        NavigationDestination(icon: Icon(Icons.access_time_filled_rounded), label: 'Progress'),
      ]),
    );
  }
}
