import 'package:to_do_app/core/model/Call.dart';
import 'package:to_do_app/core/network/model/network_call.dart';

extension CallExtensions on NetworkCall {
  Call toCall() {
    return Call(id, name, number);
  }
}