library bussiness_api;

import 'package:chopper/chopper.dart';
// import 'package:built_collection/built_collection.dart';
import 'package:pyco_test/model/bussiness/profile_res.dart';

part 'bussiness_api.chopper.dart';

@ChopperApi(baseUrl: '/api/0.4/?randomapi')
abstract class BusinessAPI extends ChopperService {
  static BusinessAPI create(ChopperClient client) {
    return _$BusinessAPI(client);
  }

  @Get(path: '/')
  Future<Response<ProfileResponse>> getProfile();
}