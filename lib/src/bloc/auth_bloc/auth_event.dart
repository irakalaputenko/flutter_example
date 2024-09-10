part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class AuthSendCodeEvent extends AuthEvent {
  final String phone;

  AuthSendCodeEvent({
    required this.phone,
  });
}

class AuthLoginEvent extends AuthEvent {
  final String phone;
  final String code;

  AuthLoginEvent({
    required this.phone,
    required this.code,
  });
}

class AuthLoginWithTokenEvent extends AuthEvent {
  final String token;
  final void Function()? afterLoginFunction;

  AuthLoginWithTokenEvent({
    required this.token,
    this.afterLoginFunction,
  });
}

class AuthLogOutEvent extends AuthEvent {
  final Function() logOutFunction;

  AuthLogOutEvent({required this.logOutFunction});
}

class AuthSetInitialEvent extends AuthEvent {}

class AuthForgottenTokenEvent extends AuthEvent {
  final String email;

  AuthForgottenTokenEvent({required this.email});
}
