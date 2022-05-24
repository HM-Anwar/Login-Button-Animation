part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    required bool isAppleButtonLoading,
    required bool isGoogleButtonLoading,
    required bool isTwitterButtonLoading,
    required bool isFacebookButtonLoading,
  }) = _LoginState;
  factory LoginState.initial() => _LoginState(
        isAppleButtonLoading: false,
        isGoogleButtonLoading: false,
        isTwitterButtonLoading: false,
        isFacebookButtonLoading: false,
      );
}
