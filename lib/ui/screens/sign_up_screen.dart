import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/utils/apps_color.dart';
import 'package:task_manager_app/widget/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  Text('Join with us',
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 24,
                  ),
                  buildSignUpform(),
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
            text: "Alreday Have an Account?",
            children: [
              TextSpan(
                  style: TextStyle(color: AppsColor.themecolor),
                  text: 'Sign In',
                recognizer: TapGestureRecognizer()..onTap=_onTapSignInButton

              )
            ]));
  }

  Widget buildSignUpform() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Email'),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(
          height: 8.0,
        ), TextFormField(
          decoration: InputDecoration(hintText: 'First Name'),
        ),
        const SizedBox(
          height: 8.0,
        ), TextFormField(
          decoration: InputDecoration(hintText: 'Last Name'),
        ),
        const SizedBox(
          height: 8.0,
        ), TextFormField(
          decoration: InputDecoration(hintText: 'Mobile'),
          keyboardType: TextInputType.number,
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
  void _onTapNextButton(){
    //TODO: Implement Next Button
  }
  void _onTapSignInButton(){
    Navigator.pop(context);
  }

}

