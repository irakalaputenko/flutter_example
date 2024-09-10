import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logging/logging.dart';
import 'package:vandal/config/api/api_config.dart';
import 'package:vandal/config/di/injector.dart';

class AppBlocObserver extends BlocObserver {
  Logger get _logger => Logger('AppBlocObserver');

  @override
  void onEvent(Bloc bloc, Object? event) {
    _logger.info('$event');
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    _logger.info('$transition');
    super.onTransition(bloc, transition);
  }

  // @override
  // void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
  //   final ApiConfig apiConfig = Injector.instance.inject<ApiConfig>();
  //   if (error is DioError) {
  //     String errorText = jsonParseErrorUtil(error);
  //     if (error.response?.statusCode == 401 &&
  //         errorText.contains('Unauthorized')) {
  //       apiConfig.removeToken();
  //       if (MainRouter.instance.navigatorKey.currentContext!
  //           .read<AuthBloc>()
  //           .state is! AuthAutoLoginInitial) {
  //         MainRouter.instance.replace(const AuthRouter());
  //       }
  //       LogOutUtil.logOut(MainRouter.instance.navigatorKey.currentContext!);
  //     } else {
  //       MainRouter.instance.navigatorKey.currentContext!
  //           .read<ErrorBloc>()
  //           .add(ErrorSetEvent(error: errorText));
  //     }
  //   } else {
  //     _logger.info('$error, $stackTrace');
  //   }
  //   DialogRouter.popDialog();
  //   super.onError(bloc, error, stackTrace);
  // }
}
