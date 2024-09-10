import 'package:hive_flutter/hive_flutter.dart';
import 'package:vandal/domain/models/local_user_model/local_user_model.dart';
import 'package:vandal/src/services/storage_service/i_storage_service.dart';
import 'package:vandal/utils/app_constants.dart';

class StorageService implements IStorageService {
  static final StorageService instance = StorageService._();

  StorageService._();

  Box<LocalUserModel>? userBox;
  Box<bool>? firstLaunchBox;

  @override
  Future<void> openBox() async {
    instance.userBox = await Hive.openBox<LocalUserModel>(AppConst.userHiveBox);
  }

  @override
  LocalUserModel? getUserInfo() {
    if (instance.userBox != null) {
      return instance.userBox!.get(AppConst.userHiveBoxKey);
    }
    return null;
  }

  @override
  void setUserInfo(
      {required String token,
      required String? phone,
      required String? contactId}) {
    LocalUserModel info = LocalUserModel();
    info.token = token;
    info.phone = phone;
    info.contactId = contactId;
    if (instance.userBox != null) {
      instance.userBox!.put(AppConst.userHiveBoxKey, info);
    }
  }

  @override
  void removeUserInfo() {
    if (instance.userBox != null) {
      instance.userBox!.delete(AppConst.userHiveBoxKey);
    }
  }
}
