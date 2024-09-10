import 'package:hive/hive.dart';

part 'local_user_model.g.dart';

@HiveType(typeId: 0)
class LocalUserModel extends HiveObject {
  @HiveField(0)
  late String token;
  @HiveField(1)
  late String? phone;
  @HiveField(2)
  late String? contactId;
}
