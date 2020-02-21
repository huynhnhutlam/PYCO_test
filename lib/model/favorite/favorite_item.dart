library favorite_item;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:pyco_test/data/remote/serializers.dart';

part 'favorite_item.g.dart';

abstract class FavoriteItem implements Built<FavoriteItem, FavoriteItemBuilder> {

  @nullable
  @BuiltValueField(wireName: 'FavoriteId')
  int get id;

  @nullable
  @BuiltValueField(wireName: 'Gender')
  String get gender;
  
  @nullable
  @BuiltValueField(wireName: 'Email')
  String get email;
  
  @nullable
  @BuiltValueField(wireName: 'Title')
  String get title;
  
  @nullable
  @BuiltValueField(wireName: 'First')
  String get first;
  
  @nullable
  @BuiltValueField(wireName: 'Last')
  String get last;
  
  @nullable
  @BuiltValueField(wireName: 'Street')
  String get street;						

  @nullable
  @BuiltValueField(wireName: 'City')
  String get city;

  @nullable
  @BuiltValueField(wireName: 'State')
  String get state;

  @nullable
  @BuiltValueField(wireName: 'Zip')
  String get zip;

  @nullable
  @BuiltValueField(wireName: 'Username')
  String get username;

  @nullable
  @BuiltValueField(wireName: 'Password')
  String get password;

  @nullable
  @BuiltValueField(wireName: 'Salt')
  String get salt;

  @nullable
  @BuiltValueField(wireName: 'Md5')
  String get md5;

  @nullable
  @BuiltValueField(wireName: 'Sha1')
  String get sha1;

  @nullable
  @BuiltValueField(wireName: 'Sha256')
  String get sha256;

  @nullable
  @BuiltValueField(wireName: 'Registered')
  String get registered;

  @nullable
  @BuiltValueField(wireName: 'Dob')
  String get dob;

  @nullable
  @BuiltValueField(wireName: 'Phone')
  String get phone;

  @nullable
  @BuiltValueField(wireName: 'Cell')
  String get cell;

  @nullable
  @BuiltValueField(wireName: 'Ssn')
  String get ssn;

  @nullable
  @BuiltValueField(wireName: 'Picture')
  String get picture;

  @nullable
  @BuiltValueField(wireName: 'seed')
  String get seed;

  @nullable
  @BuiltValueField(wireName: 'Version')
  String get version;

  FavoriteItem._();

  factory FavoriteItem([updates(FavoriteItemBuilder build)]) = _$FavoriteItem;

  static Serializer<FavoriteItem> get serializer => _$favoriteItemSerializer;

  static List<FavoriteItem> fromJsonArray(List<Map<String, dynamic>> jsonArr) {
    return jsonArr.map((json) => FavoriteItem.fromJson(json)).toList();
  }

  factory FavoriteItem.fromJson(Map<String, dynamic> json) {
    print(json.toString());
    return serializers.deserializeWith(FavoriteItem.serializer, json);
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['FavoriteId'] = this.id;
    map['Gender'] = this.gender;
    map['Email'] = this.email;
    map['Title'] = this.title;
    map['First'] = this.first;
    map['Last'] = this.last;
    map['Street'] = this.street;
    map['City'] = this.city;
    map['State'] = this.state;
    map['Zip'] = this.zip;
    map['Username'] = this.username;
    map['Password'] = this.password;
    map['Salt'] = this.salt;
    map['Md5'] = this.md5;
    map['Sha1'] = this.sha1;
    map['Sha256'] = this.sha256;
    map['Registered'] = this.registered;
    map['Dob'] = this.dob;
    map['Phone'] = this.phone;
    map['Cell'] = this.cell;
    map['Ssn'] = this.ssn;
    map['Picture'] = this.picture;
    map['seed'] = this.seed;
    map['Version'] = this.version;

    return map;
  }
}