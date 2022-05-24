import 'package:flutter/material.dart';
import 'package:loginbutton_animation/widgets/social_login_button.dart';

enum Login { apple, google, twitter, facebook }

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Login? selectedButton;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    print(selectedButton);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 24),
        SocialLoginButton(
          title: 'Continue with Apple',
          onPress: () {
            selectedButton = Login.apple;
            setState(() {
              isLoading = !isLoading;
            });
          },
          isLoading: isLoading,
          icon: 'assets/images/appleLogo.png',
          selectedButton: selectedButton!,
        ),
        const SizedBox(height: 18),
        SocialLoginButton(
          title: 'Continue with Google',
          onPress: () {
            selectedButton = Login.google;

            setState(() {
              isLoading = !isLoading;
            });
          },
          isLoading: isLoading,
          icon: 'assets/images/googleLogo.png',
          selectedButton: selectedButton!,
        ),
        const SizedBox(height: 18),
        SocialLoginButton(
          title: 'Continue with Twitter',
          onPress: () {
            selectedButton = Login.twitter;

            setState(() {
              isLoading = !isLoading;
            });
          },
          isLoading: isLoading,
          icon: 'assets/images/twitterLogo.png',
          selectedButton: selectedButton!,
        ),
        const SizedBox(height: 18),
        SocialLoginButton(
          title: 'Continue with Facebook',
          onPress: () {
            selectedButton = Login.facebook;

            setState(() {
              isLoading = !isLoading;
            });
          },
          icon: 'assets/images/facebookLogo.png',
          isLoading: isLoading,
          selectedButton: selectedButton!,
        ),
      ],
    );
  }
}
