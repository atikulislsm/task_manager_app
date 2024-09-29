import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/forgot_password_email_varification.dart';
import 'package:task_manager_app/ui/screens/main_bottom_nav_screen.dart';
import 'package:task_manager_app/ui/screens/sign_up_screen.dart';
import 'package:task_manager_app/utils/apps_color.dart';
import 'package:task_manager_app/widget/screen_background.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              Text('Get Started With',
                  style: textTheme.titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 24,
              ),
              buildSignInform(),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        _onTapForgotPassword();
                      },
                      child: Text('Forgot Password'),
                    ),
                    buildSignUpSection(),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }

  Widget buildSignInform() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Email'),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 8.0,
        ),
        TextFormField(
          decoration: InputDecoration(hintText: 'Password'),
          obscureText: true,
        ),
        const SizedBox(
          height: 24,
        ),
        ElevatedButton(
            onPressed: () {
              _onTapNextButton();
            },
            child: Icon(Icons.arrow_circle_right_outlined)),
      ],
    );
  }

  Widget buildSignUpSection() {
    return RichText(
        text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.75,
            ),
            text: "Don't have account?",
            children: [
          TextSpan(
            style: const TextStyle(color: AppsColor.themecolor),
            text: 'Sign up',
            recognizer: TapGestureRecognizer()..onTap = _onTapSignUp,
          )
        ]));
  }

  void _onTapNextButton() {
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
      return MainBottomNavScreen();
    }), (value)=>false);
  }

  void _onTapForgotPassword() {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return EmailVerification();
    }));
  }

  void _onTapSignUp() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return SignUpScreen();
    }));
  }
}
