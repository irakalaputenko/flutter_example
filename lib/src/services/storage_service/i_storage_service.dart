import 'package:vandal/domain/models/local_user_model/local_user_model.dart';

abstract class IStorageService {
  Future<void> openBox();

  LocalUserModel? getUserInfo();

  void setUserInfo({
    required String token,
    required String phone,
    required String contactId,
  });

  void removeUserInfo();
}
