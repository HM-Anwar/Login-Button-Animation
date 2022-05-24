import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loginbutton_animation/widgets/social_login_button.dart';

import '../application/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              SocialLoginButton(
                title: 'Continue with Apple',
                onPress: () =>
                    context.read<LoginBloc>().add(OnAppleButtonPressed()),
                isLoading: state.isAppleButtonLoading,
                icon: 'assets/images/appleLogo.png',
              ),
              const SizedBox(height: 18),
              SocialLoginButton(
                title: 'Continue with Google',
                onPress: () =>
                    context.read<LoginBloc>().add(OnGoogleButtonPressed()),
                isLoading: state.isGoogleButtonLoading,
                icon: 'assets/images/googleLogo.png',
              ),
              const SizedBox(height: 18),
              SocialLoginButton(
                title: 'Continue with Twitter',
                onPress: () =>
                    context.read<LoginBloc>().add(OnTwitterButtonPressed()),
                isLoading: state.isTwitterButtonLoading,
                icon: 'assets/images/twitterLogo.png',
              ),
              const SizedBox(height: 18),
              SocialLoginButton(
                title: 'Continue with Facebook',
                onPress: () =>
                    context.read<LoginBloc>().add(OnFacebookButtonPressed()),
                icon: 'assets/images/facebookLogo.png',
                isLoading: state.isFacebookButtonLoading,
              ),
            ],
          );
        },
      ),
    );
  }
}
