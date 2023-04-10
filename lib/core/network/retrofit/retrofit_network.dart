import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:to_do_app/core/network/network_data_source.dart';

import '../model/network_call.dart';

@RestApi()
@Injectable(as: NetworkDataSource)
abstract class RetrofitNetwork implements NetworkDataSource {
  @factoryMethod
  factory RestRetrofitNetwork(Dio dio) => _RestRetrofitNetwork(dio);

  @override
  @GET("imkhan334/demo-1/buy")
  Future<List<NetworkCall>> getCalls();
}