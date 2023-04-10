import 'model/network_call.dart';

abstract class NetworkDataSource {
  Future<List<NetworkCall>> getCalls();
}