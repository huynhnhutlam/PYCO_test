library user_data;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pyco_test/model/bussiness/location.dart';
import 'package:pyco_test/model/bussiness/name.dart';

part 'user_data.g.dart';

abstract class UserData implements Built<UserData, UserDataBuilder> {						
  
  
  @nullable
  String get gender;

  @nullable
  String get email;
  
  @nullable
  Name get name;

  @nullable
  Location get location;

  @nullable
  String get username;
  
  @nullable
  String get password;

  @nullable
  String get salt;

  @nullable
  String get md5;
  
  @nullable
  String get sha1;
  
  @nullable
  String get sha256;

  @nullable
  String get registered;

  @nullable
  String get dob;
  
  @nullable
  String get phone;
  
  @nullable
  String get cell;

  @nullable
  @BuiltValueField(wireName: 'SSN')
  String get ssn;

  @nullable
  String get picture;
  
  UserData._();

  factory UserData([updates(UserDataBuilder builder)]) = _$UserData;

  static Serializer<UserData> get serializer => _$userDataSerializer;
}