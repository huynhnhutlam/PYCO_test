// GENERATED CODE - DO NOT MODIFY BY HAND

part of profile_res;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProfileResponse> _$profileResponseSerializer =
    new _$ProfileResponseSerializer();

class _$ProfileResponseSerializer
    implements StructuredSerializer<ProfileResponse> {
  @override
  final Iterable<Type> types = const [ProfileResponse, _$ProfileResponse];
  @override
  final String wireName = 'ProfileResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, ProfileResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.results != null) {
      result
        ..add('results')
        ..add(serializers.serialize(object.results,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Profile)])));
    }
    return result;
  }

  @override
  ProfileResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProfileResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Profile)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ProfileResponse extends ProfileResponse {
  @override
  final BuiltList<Profile> results;

  factory _$ProfileResponse([void Function(ProfileResponseBuilder) updates]) =>
      (new ProfileResponseBuilder()..update(updates)).build();

  _$ProfileResponse._({this.results}) : super._();

  @override
  ProfileResponse rebuild(void Function(ProfileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProfileResponseBuilder toBuilder() =>
      new ProfileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProfileResponse && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc(0, results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProfileResponse')
          ..add('results', results))
        .toString();
  }
}

class ProfileResponseBuilder
    implements Builder<ProfileResponse, ProfileResponseBuilder> {
  _$ProfileResponse _$v;

  ListBuilder<Profile> _results;
  ListBuilder<Profile> get results =>
      _$this._results ??= new ListBuilder<Profile>();
  set results(ListBuilder<Profile> results) => _$this._results = results;

  ProfileResponseBuilder();

  ProfileResponseBuilder get _$this {
    if (_$v != null) {
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProfileResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProfileResponse;
  }

  @override
  void update(void Function(ProfileResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProfileResponse build() {
    _$ProfileResponse _$result;
    try {
      _$result = _$v ?? new _$ProfileResponse._(results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProfileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
