import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:vandal/common/service/storage_service.dart';

@singleton
class SessionService {
  SessionService({
    required StorageService storageService,
  }) : _storageService = storageService;

  final StorageService _storageService;

  String? _msisdn;
  String? _bearerToken;

  String? get msisdn => _msisdn;

  String? get bearerToken => _bearerToken;

  late final _onSession = BehaviorSubject<bool>.seeded(false);

  BehaviorSubject<bool> get onSession => _onSession;

  Future<void> openSession({
    required String token,
    required String msisdn,
  }) async {
    if (_bearerToken != null) {
      return;
    }
    await _storageService.writeMsisdn(msisdn);
    await _storageService.writeIsLoggedIn(true);

    _msisdn = msisdn;
    _bearerToken = '${'Bearer'} $token';
    _onSession.add(true);
  }

  void updateSession(String token) {
    _bearerToken = '${'Bearer'} $token';
  }

  Future<void> closeSession() async {
    if (_bearerToken == null) {
      return;
    }
    _msisdn = null;
    _bearerToken = null;
    _onSession.add(false);
  }

  Future<void> logout() async {
    await _storageService.removeIsLoggedIn();
    await closeSession();
  }
}
