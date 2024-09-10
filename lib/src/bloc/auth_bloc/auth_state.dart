part of 'auth_bloc.dart';

@immutable
abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthError extends AuthState {
  final String error;

  const AuthError({required this.error});
}

class AuthLoaded extends AuthState {
  const AuthLoaded();
}

class AuthSendedCode extends AuthState {
  final String phone;
  const AuthSendedCode({required this.phone});
}

class AuthLogaut extends AuthState {
  const AuthLogaut();
}
