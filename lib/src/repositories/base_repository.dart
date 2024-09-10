import 'package:vandal/src/network/rest_client.dart';

abstract class BaseRepository {
  final RestClient api;

  BaseRepository({required RestClient restClient}) : api = restClient;
}
