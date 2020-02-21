library profile;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pyco_test/model/bussiness/user_data.dart';

part 'profile.g.dart';

abstract class Profile implements Built<Profile, ProfileBuilder> {						
  
  
  @nullable
  UserData get user;

  @nullable
  String get seed;

  @nullable
  String get version;

  
  Profile._();

  factory Profile([updates(ProfileBuilder builder)]) = _$Profile;

  static Serializer<Profile> get serializer => _$profileSerializer;

  
  // static List<Profile> fromJsonArray(List<Map<String, dynamic>> jsonArr) {
  //   return jsonArr.map((json) => Profile.fromJson(json)).toList();
  // }

  // factory Profile.fromJson(Map<String, dynamic> json) {
  //   print(json.toString());
  //   return serializers.deserializeWith(Profile.serializer, json);
  // }

  // Map<String, dynamic> toMap() {
  //   Map<String, dynamic> map = Map<String, dynamic>();
  //   map['FavoriteId'] = null;
  //   map['Gender'] = this.user.gender;
  //   map['Email'] = this.user..email;
  //   map['Title'] = this.user.name.title;
  //   map['First'] = this.user.name.first;
  //   map['Last'] = this.user.name.last;
  //   map['Street'] = this.user.location.street;
  //   map['City'] = this.user.location.city;
  //   map['State'] = this.user.location.state;
  //   map['Zip'] = this.user.location.zip;
  //   map['Username'] = this.user.username;
  //   map['Password'] = this.user.password;
  //   map['Salt'] = this.user.salt;
  //   map['Md5'] = this.user.md5;
  //   map['Sha1'] = this.user.sha1;
  //   map['Sha256'] = this.user.sha256;
  //   map['Registered'] = this.user.registered;
  //   map['Dob'] = this.user.dob;
  //   map['Phone'] = this.user.phone;
  //   map['Cell'] = this.user.cell;
  //   map['Ssn'] = this.user.ssn;
  //   map['Picture'] = this.user.picture;
  //   map['Seed'] = this.seed;
  //   map['Version'] = this.version;
  //   return map;
  // }
}