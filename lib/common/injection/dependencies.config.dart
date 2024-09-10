// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:go_router/go_router.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i7;
import 'package:logger/logger.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i11;
import 'package:uuid/uuid.dart' as _i14;
import 'package:vandal/common/constants/config.dart' as _i3;
import 'package:vandal/common/injection/api_module.dart' as _i22;
import 'package:vandal/common/injection/third_party_module.dart' as _i23;
import 'package:vandal/common/network/interceptor/auth_interceptor.dart'
    as _i18;
import 'package:vandal/common/network/interceptor/base_interceptor.dart'
    as _i10;
import 'package:vandal/common/network/interceptor/error_interceptor.dart'
    as _i16;
import 'package:vandal/common/network/interceptor/logger_interceptor.dart'
    as _i8;
import 'package:vandal/common/service/device_info.dart' as _i5;
import 'package:vandal/common/service/service_session.dart' as _i17;
import 'package:vandal/common/service/storage_service.dart' as _i12;
import 'package:vandal/common/service/translation_service.dart' as _i13;
import 'package:vandal/src/repositories/auth_repository/auth_repository.dart'
    as _i19;
import 'package:vandal/src/services/auth_service/auth_service.dart' as _i20;
import 'package:vandal/src/services/auth_service/auth_service_impl.dart'
    as _i21;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final thirdPartyModule = _$ThirdPartyModule();
    final apiModule = _$ApiModule();
    gh.factory<_i3.Config>(() => _i3.Config());
    gh.singleton<_i4.Connectivity>(thirdPartyModule.connectivity);
    await gh.singletonAsync<_i5.DeviceInfoProvider>(
      () {
        final i = _i5.DeviceInfoProvider();
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i6.GoRouter>(() => thirdPartyModule.router);
    gh.factory<_i7.InternetConnectionChecker>(
        () => thirdPartyModule.connectionChecker);
    gh.factory<_i8.LoggerInterceptor>(
        () => _i8.LoggerInterceptor(logger: gh<_i9.Logger>()));
    gh.singleton<_i10.RequestIdProvider>(_i10.RequestIdProvider());
    await gh.factoryAsync<_i11.SharedPreferences>(
      () => thirdPartyModule.sharedPreferences,
      preResolve: true,
    );
    gh.factory<_i12.StorageService>(
        () => _i12.StorageService(preferences: gh<_i11.SharedPreferences>()));
    gh.singleton<_i13.TranslationService>(_i13.TranslationService());
    gh.factory<_i14.Uuid>(() => thirdPartyModule.uuid);
    gh.factory<_i10.BaseInterceptor>(() => _i10.BaseInterceptor(
          deviceInfoProvider: gh<_i5.DeviceInfoProvider>(),
          requestIdProvider: gh<_i10.RequestIdProvider>(),
          translationService: gh<_i13.TranslationService>(),
        ));
    gh.factory<_i15.Dio>(
      () => apiModule.cdn(
        gh<_i3.Config>(),
        gh<_i8.LoggerInterceptor>(),
      ),
      instanceName: 'cdn',
    );
    gh.factory<_i16.ErrorInterceptor>(() => _i16.ErrorInterceptor(
        connectionChecker: gh<_i7.InternetConnectionChecker>()));
    gh.singleton<_i17.SessionService>(
        _i17.SessionService(storageService: gh<_i12.StorageService>()));
    gh.factory<_i18.AuthInterceptor>(
        () => _i18.AuthInterceptor(sessionService: gh<_i17.SessionService>()));
    gh.factory<_i15.Dio>(
      () => apiModule.noAuthDio(
        gh<_i3.Config>(),
        gh<_i8.BaseInterceptor>(),
        gh<_i8.LoggerInterceptor>(),
        gh<_i16.ErrorInterceptor>(),
      ),
      instanceName: 'no_auth',
    );
    gh.factory<_i15.Dio>(() => apiModule.authDio(
          gh<_i3.Config>(),
          gh<_i8.BaseInterceptor>(),
          gh<_i18.AuthInterceptor>(),
          gh<_i8.LoggerInterceptor>(),
          gh<_i16.ErrorInterceptor>(),
        ));
    gh.lazySingleton<_i19.AuthRepository>(
        () => _i19.AuthRepository(gh<_i15.Dio>()));
    gh.lazySingleton<_i20.AuthService>(
        () => _i21.AuthServiceImpl(gh<_i19.AuthRepository>()));
    return this;
  }
}

class _$ApiModule extends _i22.ApiModule {}

class _$ThirdPartyModule extends _i23.ThirdPartyModule {}
