import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:vandal/common/injection/dependencies.dart';
import 'package:vandal/my_app.dart';
import 'package:vandal/src/bloc/auth_bloc/auth_bloc.dart';
import 'package:vandal/common/service/translation_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  await configureDependencies();

  // await Hive.initFlutter();
  // Hive.registerAdapter(LocalUserModelAdapter());
  // await StorageService.instance.openBox();
  // Injector.instance.initialize();

  // Bloc.observer = AppBlocObserver();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('uk'), Locale('ru')],
      path: 'assets/translations',
      fallbackLocale: const Locale('uk'),
      assetLoader: getIt<TranslationService>(),
      child: BlocProvider(
        create: (context) => AuthBloc(),
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, authState) {
            return Application(getIt<GoRouter>());
          },
        ),
      ),
    ),
  );
}
