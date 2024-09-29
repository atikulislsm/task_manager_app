import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/forgot_password_otp_screen.dart';
import 'package:task_manager_app/ui/screens/sign_in_screen.dart';
import 'package:task_manager_app/utils/apps_color.dart';
import 'package:task_manager_app/widget/screen_background.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: ScreenBackground(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Text('Set Password',
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0,),
                  Text('Minimum number of password should be 8 letters',
                      style: textTheme.titleSmall
                          ?.copyWith(color: Colors.grey)),
                  const SizedBox(
                    height: 24,
                  ),
                  builResetPassword(),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Column(
                      children: [
                        buildSignInSection(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
  Widget buildSignInSection() {
    return RichText(
        text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
            text: "Alreday Have an Account? ",
            children: [
              TextSpan(
                  style: TextStyle(color: AppsColor.themecolor),
                  text: 'Sign In',
                recognizer: TapGestureRecognizer()..onTap=_onTapSignInButton

              )
            ]));
  }

  Widget builResetPassword() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Password'),
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 16.0,),
        TextFormField(
          decoration: InputDecoration(hintText: 'Confirm password'),
          keyboardType: TextInputType.text,
        ),
        const SizedBox(height: 34.0,),
        ElevatedButton(
            onPressed: () {
              _onTapNextButton();
            },
            child: Icon(Icons.arrow_circle_right_outlined)),
      ],
    );
  }
  void _onTapNextButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
      return SignInScreen();
    }), (_)=> false);
  }
  void _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
      return SignInScreen();
    }), (_)=> false);
  }

}

