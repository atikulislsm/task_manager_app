import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/sign_in_screen.dart';
import 'package:task_manager_app/utils/apps_color.dart';

class TMAppBar extends StatefulWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key,
  });

  @override
  State<TMAppBar> createState() => _TMAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _TMAppBarState extends State<TMAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppsColor.themecolor,
      title: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/atik_5.jpg'),
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
          IconButton(onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
              return SignInScreen();
            }), (value)=>false);
          }, icon: Icon(Icons.logout)),
        ],
      ),
    );
  }
}