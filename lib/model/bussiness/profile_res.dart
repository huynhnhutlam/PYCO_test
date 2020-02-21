library profile_res;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:built_collection/built_collection.dart';

part 'profile_res.g.dart';

abstract class ProfileResponse implements Built<ProfileResponse, ProfileResponseBuilder> {

  @nullable
  BuiltList<Profile> get results;

  ProfileResponse._();

  factory ProfileResponse([updates(ProfileResponseBuilder builder)]) = _$ProfileResponse;

  static Serializer<ProfileResponse> get serializer => _$profileResponseSerializer;
}