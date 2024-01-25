// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/dio_instance.dart' as _i7;
import 'features/auth/blocs/login_bloc/login_bloc.dart' as _i4;
import 'features/auth/blocs/signup_bloc/signup_bloc.dart' as _i5;
import 'features/auth/controllers/auth_controller.dart' as _i6;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt initialize({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.singleton<_i3.Dio>(appModule.dio);
    gh.factory<_i4.LoginBloc>(() => _i4.LoginBloc());
    gh.factory<_i5.SignupBloc>(() => _i5.SignupBloc());
    gh.lazySingleton<_i6.AuthController>(
        () => _i6.AuthController(dio: gh<_i3.Dio>()));
    return this;
  }
}

class _$AppModule extends _i7.AppModule {}
