import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_app/ui/screens/reset_password_screen.dart';
import 'package:task_manager_app/ui/screens/sign_in_screen.dart';
import 'package:task_manager_app/utils/apps_color.dart';
import 'package:task_manager_app/widget/screen_background.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordOTPVerification extends StatefulWidget {
  const ForgotPasswordOTPVerification({super.key});

  @override
  State<ForgotPasswordOTPVerification> createState() => _ForgotPasswordOTPVerificationState();
}

class _ForgotPasswordOTPVerificationState extends State<ForgotPasswordOTPVerification> {
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
                  Text('Pin Verification',
                      style: textTheme.titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8.0,),
                  Text('A 6 digit verification otp has been send to your email',
                      style: textTheme.titleSmall
                          ?.copyWith(color: Colors.grey)),
                  const SizedBox(
                    height: 24,
                  ),
                  builPinVerification(),
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

  Widget builPinVerification() {
    return Column(
      children: [
        PinCodeTextField(
          length: 6,
          obscureText: true,
          animationType: AnimationType.fade,
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5),
            fieldHeight: 50,
            fieldWidth: 40,
            activeFillColor: Colors.white,
            inactiveFillColor: Colors.white,
            selectedFillColor: Colors.white,
          ),
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          enableActiveFill: true,
         appContext: context,
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
      return ResetPasswordScreen();
    }));
  }
  void _onTapSignInButton(){
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
      return SignInScreen();
    }), (_) => false);


  }

}

