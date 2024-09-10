import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kMsisdn = 'msisdn';
const _kIsLoggedIn = 'isLoggedIn';

@injectable
class StorageService {
  StorageService({
    required SharedPreferences preferences,
  }) : _preferences = preferences;

  final SharedPreferences _preferences;

  String? readMsisdn() => _preferences.getString(_kMsisdn);

  Future<void> writeMsisdn(String value) async =>
      _preferences.setString(_kMsisdn, value);

  Future<void> removeMsisdn() async => _preferences.remove(_kMsisdn);

  bool readIsLoggedIn() => _preferences.getBool(_kIsLoggedIn) ?? false;

  Future<void> writeIsLoggedIn(bool value) async =>
      _preferences.setBool(_kIsLoggedIn, value);

  Future<void> removeIsLoggedIn() async => _preferences.remove(_kIsLoggedIn);
}
