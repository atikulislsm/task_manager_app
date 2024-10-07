import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/profile_screens.dart';
import 'package:task_manager_app/ui/screens/sign_in_screen.dart';
import 'package:task_manager_app/utils/apps_color.dart';

class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key, this.isProfileScreenOpen=false,
  });
  final bool isProfileScreenOpen;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(isProfileScreenOpen){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return ProfileScreen();
        }));
      },
      child: AppBar(
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
                  Text('atikul.islam.atik1971@gmail.com',style: TextStyle(fontSize: 10,color: Colors.white),),
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
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}