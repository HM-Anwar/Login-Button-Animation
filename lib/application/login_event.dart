part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  factory LoginEvent.onAppleButtonPressed() = OnAppleButtonPressed;
  factory LoginEvent.onGoogleButtonPressed() = OnGoogleButtonPressed;
  factory LoginEvent.onTwitterButtonPressed() = OnTwitterButtonPressed;
  factory LoginEvent.onFacebookButtonPressed() = OnFacebookButtonPressed;
}
