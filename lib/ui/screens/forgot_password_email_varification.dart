import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/forgot_password_otp_screen.dart';
import 'package:task_manager_app/utils/apps_color.dart';
import 'package:task_manager_app/widget/screen_background.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
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
                  Text('Your Email Address',
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0,),
                  Text('A 6 digit verification otp will send to your email',
                      style: textTheme.titleSmall
                          ?.copyWith(color: Colors.grey)),
                  const SizedBox(
                    height: 24,
                  ),
                  builVeirfyEmailform(),
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

  Widget builVeirfyEmailform() {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: 'Email'),
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 80.0,),
        ElevatedButton(
            onPressed: () {
              _onTapNextButton();
            },
            child: Icon(Icons.arrow_circle_right_outlined)),
      ],
    );
  }
  void _onTapNextButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return ForgotPasswordOTPVerification();
    }));
  }
  void _onTapSignInButton(){
    Navigator.pop(context);
  }

}

