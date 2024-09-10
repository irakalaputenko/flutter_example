import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vandal/config/api/api_config.dart';
import 'package:vandal/config/di/injector.dart';
import 'package:vandal/domain/responses/send_code_response/send_code_response.dart';
import 'package:vandal/domain/responses/token_response/token_response.dart';
import 'package:vandal/src/services/auth_service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial()) {
    on<AuthLoginEvent>(_login);
    on<AuthSendCodeEvent>(_sendCode);
    on<AuthLogOutEvent>(_logout);
    on<AuthSetInitialEvent>(_setInitial);
  }

  final AuthService _authService = Injector.instance.inject<AuthService>();
  final ApiConfig _apiConfig = Injector.instance.inject<ApiConfig>();

  Future<void> _sendCode(
      AuthSendCodeEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthLoading());
      final SendCodeResponse? response = await _authService.sendCode(
        phone: event.phone,
      );
      if (response != null) {
        emit(AuthSendedCode(phone: event.phone));
      }
    } catch (e) {
      emit(AuthError(error: e.toString()));
      rethrow;
    }
  }

  Future<void> _login(AuthLoginEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthLoading());
      final TokenResponse? response = await _authService.login(
        phone: event.phone,
        code: event.code,
      );

      if (response != null && response.accessToken != null) {
        _apiConfig.setToken(
            token: response.accessToken!, contactId: response.user?.contactId);

        emit(const AuthLoaded());
      }
    } catch (e) {
      emit(const AuthInitial());
      if (e is DioError) {
        rethrow;
      } else {
        rethrow;
      }
    }
  }

  Future<void> _logout(AuthLogOutEvent event, Emitter<AuthState> emit) async {
    try {
      emit(const AuthLoading());
      _apiConfig.removeToken();
      event.logOutFunction.call();
      emit(const AuthLogaut());
      emit(const AuthInitial());
    } catch (e) {
      emit(const AuthInitial());
      rethrow;
    }
  }

  Future<void> _setInitial(
      AuthSetInitialEvent event, Emitter<AuthState> emit) async {
    emit(const AuthInitial());
  }
}
