import 'package:coffee_shop/dependency_injection.dart';
import 'package:coffee_shop/features/auth/controllers/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    final authController = getIt.get<AuthController>();
    on<LoginEvent>((event, emit) async {
      final failureOrSuccess = await authController.login(
          mobileNo: event.mobileNumber, password: event.password);
      failureOrSuccess.fold(
        (l) => emit(LoginFailure()),
        (r) => emit(LoginSuccess()),
      );
    });
  }
}
