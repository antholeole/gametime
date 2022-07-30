import 'dart:ui';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

enum LoginProvider {
  google('Google', Color(0xff4285F4));

  const LoginProvider(this.name, this.color);

  final String name;
  final Color color;
}

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginState.prompting());

  Future<void> login(LoginProvider provider) async {
    emit(state);
  }
}
