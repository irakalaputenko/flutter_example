import 'dart:io';

import 'package:android_id/android_id.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

@singleton
class DeviceInfoProvider {
  late final DeviceInfo info;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    info = await DeviceInfo.create();
  }
}

class DeviceInfo {
  final String deviceId;
  final String model;
  final String deviceOs;
  final String deviceOsVersion;

  DeviceInfo._({
    required this.deviceId,
    required this.model,
    required this.deviceOs,
    required this.deviceOsVersion,
  });

  static Future<DeviceInfo> create() async {
    final deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final iosDeviceInfo = await deviceInfo.iosInfo;
      return DeviceInfo._(
        deviceId: iosDeviceInfo.identifierForVendor!,
        model: iosDeviceInfo.utsname.machine!,
        deviceOs: 'ios',
        deviceOsVersion: iosDeviceInfo.systemVersion!,
      );
    } else {
      final androidDeviceInfo = await deviceInfo.androidInfo;
      final androidId = await const AndroidId().getId();
      return DeviceInfo._(
        deviceId: androidId!,
        model: androidDeviceInfo.model,
        deviceOs: 'android',
        deviceOsVersion: androidDeviceInfo.version.release,
      );
    }
  }
}
