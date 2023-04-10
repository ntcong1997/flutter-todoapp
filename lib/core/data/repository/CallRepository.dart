import 'package:to_do_app/core/model/Call.dart';

abstract class CallRepository {
  Future<List<Call>> getCalls();
}