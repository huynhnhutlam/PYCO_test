// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorite_item;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoriteItem> _$favoriteItemSerializer =
    new _$FavoriteItemSerializer();

class _$FavoriteItemSerializer implements StructuredSerializer<FavoriteItem> {
  @override
  final Iterable<Type> types = const [FavoriteItem, _$FavoriteItem];
  @override
  final String wireName = 'FavoriteItem';

  @override
  Iterable<Object> serialize(Serializers serializers, FavoriteItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('FavoriteId')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.gender != null) {
      result
        ..add('Gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('Email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('Title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.first != null) {
      result
        ..add('First')
        ..add(serializers.serialize(object.first,
            specifiedType: const FullType(String)));
    }
    if (object.last != null) {
      result
        ..add('Last')
        ..add(serializers.serialize(object.last,
            specifiedType: const FullType(String)));
    }
    if (object.street != null) {
      result
        ..add('Street')
        ..add(serializers.serialize(object.street,
            specifiedType: const FullType(String)));
    }
    if (object.city != null) {
      result
        ..add('City')
        ..add(serializers.serialize(object.city,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('State')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.zip != null) {
      result
        ..add('Zip')
        ..add(serializers.serialize(object.zip,
            specifiedType: const FullType(String)));
    }
    if (object.username != null) {
      result
        ..add('Username')
        ..add(serializers.serialize(object.username,
            specifiedType: const FullType(String)));
    }
    if (object.password != null) {
      result
        ..add('Password')
        ..add(serializers.serialize(object.password,
            specifiedType: const FullType(String)));
    }
    if (object.salt != null) {
      result
        ..add('Salt')
        ..add(serializers.serialize(object.salt,
            specifiedType: const FullType(String)));
    }
    if (object.md5 != null) {
      result
        ..add('Md5')
        ..add(serializers.serialize(object.md5,
            specifiedType: const FullType(String)));
    }
    if (object.sha1 != null) {
      result
        ..add('Sha1')
        ..add(serializers.serialize(object.sha1,
            specifiedType: const FullType(String)));
    }
    if (object.sha256 != null) {
      result
        ..add('Sha256')
        ..add(serializers.serialize(object.sha256,
            specifiedType: const FullType(String)));
    }
    if (object.registered != null) {
      result
        ..add('Registered')
        ..add(serializers.serialize(object.registered,
            specifiedType: const FullType(String)));
    }
    if (object.dob != null) {
      result
        ..add('Dob')
        ..add(serializers.serialize(object.dob,
            specifiedType: const FullType(String)));
    }
    if (object.phone != null) {
      result
        ..add('Phone')
        ..add(serializers.serialize(object.phone,
            specifiedType: const FullType(String)));
    }
    if (object.cell != null) {
      result
        ..add('Cell')
        ..add(serializers.serialize(object.cell,
            specifiedType: const FullType(String)));
    }
    if (object.ssn != null) {
      result
        ..add('Ssn')
        ..add(serializers.serialize(object.ssn,
            specifiedType: const FullType(String)));
    }
    if (object.picture != null) {
      result
        ..add('Picture')
        ..add(serializers.serialize(object.picture,
            specifiedType: const FullType(String)));
    }
    if (object.seed != null) {
      result
        ..add('Seed')
        ..add(serializers.serialize(object.seed,
            specifiedType: const FullType(String)));
    }
    if (object.version != null) {
      result
        ..add('Version')
        ..add(serializers.serialize(object.version,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FavoriteItem deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteItemBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'FavoriteId':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'First':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Last':
          result.last = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Street':
          result.street = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'City':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'State':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Salt':
          result.salt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Md5':
          result.md5 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Sha1':
          result.sha1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Sha256':
          result.sha256 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Registered':
          result.registered = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Cell':
          result.cell = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Ssn':
          result.ssn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Seed':
          result.seed = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteItem extends FavoriteItem {
  @override
  final int id;
  @override
  final String gender;
  @override
  final String email;
  @override
  final String title;
  @override
  final String first;
  @override
  final String last;
  @override
  final String street;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zip;
  @override
  final String username;
  @override
  final String password;
  @override
  final String salt;
  @override
  final String md5;
  @override
  final String sha1;
  @override
  final String sha256;
  @override
  final String registered;
  @override
  final String dob;
  @override
  final String phone;
  @override
  final String cell;
  @override
  final String ssn;
  @override
  final String picture;
  @override
  final String seed;
  @override
  final String version;

  factory _$FavoriteItem([void Function(FavoriteItemBuilder) updates]) =>
      (new FavoriteItemBuilder()..update(updates)).build();

  _$FavoriteItem._(
      {this.id,
      this.gender,
      this.email,
      this.title,
      this.first,
      this.last,
      this.street,
      this.city,
      this.state,
      this.zip,
      this.username,
      this.password,
      this.salt,
      this.md5,
      this.sha1,
      this.sha256,
      this.registered,
      this.dob,
      this.phone,
      this.cell,
      this.ssn,
      this.picture,
      this.seed,
      this.version})
      : super._();

  @override
  FavoriteItem rebuild(void Function(FavoriteItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteItemBuilder toBuilder() => new FavoriteItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteItem &&
        id == other.id &&
        gender == other.gender &&
        email == other.email &&
        title == other.title &&
        first == other.first &&
        last == other.last &&
        street == other.street &&
        city == other.city &&
        state == other.state &&
        zip == other.zip &&
        username == other.username &&
        password == other.password &&
        salt == other.salt &&
        md5 == other.md5 &&
        sha1 == other.sha1 &&
        sha256 == other.sha256 &&
        registered == other.registered &&
        dob == other.dob &&
        phone == other.phone &&
        cell == other.cell &&
        ssn == other.ssn &&
        picture == other.picture &&
        seed == other.seed &&
        version == other.version;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc(0, id.hashCode), gender.hashCode), email.hashCode), title.hashCode), first.hashCode),
                                                                                last.hashCode),
                                                                            street.hashCode),
                                                                        city.hashCode),
                                                                    state.hashCode),
                                                                zip.hashCode),
                                                            username.hashCode),
                                                        password.hashCode),
                                                    salt.hashCode),
                                                md5.hashCode),
                                            sha1.hashCode),
                                        sha256.hashCode),
                                    registered.hashCode),
                                dob.hashCode),
                            phone.hashCode),
                        cell.hashCode),
                    ssn.hashCode),
                picture.hashCode),
            seed.hashCode),
        version.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteItem')
          ..add('id', id)
          ..add('gender', gender)
          ..add('email', email)
          ..add('title', title)
          ..add('first', first)
          ..add('last', last)
          ..add('street', street)
          ..add('city', city)
          ..add('state', state)
          ..add('zip', zip)
          ..add('username', username)
          ..add('password', password)
          ..add('salt', salt)
          ..add('md5', md5)
          ..add('sha1', sha1)
          ..add('sha256', sha256)
          ..add('registered', registered)
          ..add('dob', dob)
          ..add('phone', phone)
          ..add('cell', cell)
          ..add('ssn', ssn)
          ..add('picture', picture)
          ..add('seed', seed)
          ..add('version', version))
        .toString();
  }
}

class FavoriteItemBuilder
    implements Builder<FavoriteItem, FavoriteItemBuilder> {
  _$FavoriteItem _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _first;
  String get first => _$this._first;
  set first(String first) => _$this._first = first;

  String _last;
  String get last => _$this._last;
  set last(String last) => _$this._last = last;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _salt;
  String get salt => _$this._salt;
  set salt(String salt) => _$this._salt = salt;

  String _md5;
  String get md5 => _$this._md5;
  set md5(String md5) => _$this._md5 = md5;

  String _sha1;
  String get sha1 => _$this._sha1;
  set sha1(String sha1) => _$this._sha1 = sha1;

  String _sha256;
  String get sha256 => _$this._sha256;
  set sha256(String sha256) => _$this._sha256 = sha256;

  String _registered;
  String get registered => _$this._registered;
  set registered(String registered) => _$this._registered = registered;

  String _dob;
  String get dob => _$this._dob;
  set dob(String dob) => _$this._dob = dob;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _cell;
  String get cell => _$this._cell;
  set cell(String cell) => _$this._cell = cell;

  String _ssn;
  String get ssn => _$this._ssn;
  set ssn(String ssn) => _$this._ssn = ssn;

  String _picture;
  String get picture => _$this._picture;
  set picture(String picture) => _$this._picture = picture;

  String _seed;
  String get seed => _$this._seed;
  set seed(String seed) => _$this._seed = seed;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  FavoriteItemBuilder();

  FavoriteItemBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _gender = _$v.gender;
      _email = _$v.email;
      _title = _$v.title;
      _first = _$v.first;
      _last = _$v.last;
      _street = _$v.street;
      _city = _$v.city;
      _state = _$v.state;
      _zip = _$v.zip;
      _username = _$v.username;
      _password = _$v.password;
      _salt = _$v.salt;
      _md5 = _$v.md5;
      _sha1 = _$v.sha1;
      _sha256 = _$v.sha256;
      _registered = _$v.registered;
      _dob = _$v.dob;
      _phone = _$v.phone;
      _cell = _$v.cell;
      _ssn = _$v.ssn;
      _picture = _$v.picture;
      _seed = _$v.seed;
      _version = _$v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavoriteItem;
  }

  @override
  void update(void Function(FavoriteItemBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteItem build() {
    final _$result = _$v ??
        new _$FavoriteItem._(
            id: id,
            gender: gender,
            email: email,
            title: title,
            first: first,
            last: last,
            street: street,
            city: city,
            state: state,
            zip: zip,
            username: username,
            password: password,
            salt: salt,
            md5: md5,
            sha1: sha1,
            sha256: sha256,
            registered: registered,
            dob: dob,
            phone: phone,
            cell: cell,
            ssn: ssn,
            picture: picture,
            seed: seed,
            version: version);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
