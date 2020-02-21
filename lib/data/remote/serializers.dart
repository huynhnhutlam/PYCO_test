library serializers;

import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:pyco_test/model/bussiness/location.dart';
import 'package:pyco_test/model/bussiness/name.dart';
import 'package:pyco_test/model/bussiness/profile.dart';
import 'package:pyco_test/model/bussiness/profile_res.dart';
import 'package:pyco_test/model/bussiness/user_data.dart';
import 'package:pyco_test/model/favorite/favorite_item.dart';


part 'serializers.g.dart';

@SerializersFor(const [
  Profile,
  UserData,
  Name,
  Location,
  ProfileResponse,
  FavoriteItem
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
