import 'package:injectable/injectable.dart';
import 'package:to_do_app/core/data/model/Call.dart';
import 'package:to_do_app/core/data/repository/CallRepository.dart';
import 'package:to_do_app/core/model/Call.dart';
import 'package:to_do_app/core/network/network_data_source.dart';

@Injectable(as: CallRepository)
class OnlineCallRepository implements CallRepository {
  final NetworkDataSource _networkDataSource;

  OnlineCallRepository(this._networkDataSource)

  @override
  Future<List<Call>> getCalls() {
    return _networkDataSource.getCalls()
        .then((value) => value.map((e) => e.toCall()).toList())
        .catchError((e) => throw Exception(e));
  }
}