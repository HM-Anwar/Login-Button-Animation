import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_event.dart';
part 'login_bloc.freezed.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<OnAppleButtonPressed>((event, emit) async {
      emit(state.copyWith(isAppleButtonLoading: true));
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(isAppleButtonLoading: false));
    });

    on<OnGoogleButtonPressed>((event, emit) async {
      emit(state.copyWith(isGoogleButtonLoading: true));
      await Future.delayed(const Duration(milliseconds: 500));

      emit(state.copyWith(isGoogleButtonLoading: false));
    });

    on<OnTwitterButtonPressed>((event, emit) async {
      emit(state.copyWith(isTwitterButtonLoading: true));
      await Future.delayed(const Duration(milliseconds: 500));

      emit(state.copyWith(isTwitterButtonLoading: false));
    });

    on<OnFacebookButtonPressed>((event, emit) async {
      emit(state.copyWith(isFacebookButtonLoading: true));
      await Future.delayed(const Duration(milliseconds: 500));
      emit(state.copyWith(isFacebookButtonLoading: false));
    });
  }
}
