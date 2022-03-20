// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ad_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ADUser _$ADUserFromJson(Map<String, dynamic> json) {
  return _ADUser.fromJson(json);
}

/// @nodoc
class _$ADUserTearOff {
  const _$ADUserTearOff();

  _ADUser call(
      {String? username,
      @JsonKey(name: 'id', defaultValue: '') String? userid,
      String? email,
      String? password}) {
    return _ADUser(
      username: username,
      userid: userid,
      email: email,
      password: password,
    );
  }

  ADUser fromJson(Map<String, Object?> json) {
    return ADUser.fromJson(json);
  }
}

/// @nodoc
const $ADUser = _$ADUserTearOff();

/// @nodoc
mixin _$ADUser {
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'id', defaultValue: '')
  String? get userid => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ADUserCopyWith<ADUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ADUserCopyWith<$Res> {
  factory $ADUserCopyWith(ADUser value, $Res Function(ADUser) then) =
      _$ADUserCopyWithImpl<$Res>;
  $Res call(
      {String? username,
      @JsonKey(name: 'id', defaultValue: '') String? userid,
      String? email,
      String? password});
}

/// @nodoc
class _$ADUserCopyWithImpl<$Res> implements $ADUserCopyWith<$Res> {
  _$ADUserCopyWithImpl(this._value, this._then);

  final ADUser _value;
  // ignore: unused_field
  final $Res Function(ADUser) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? userid = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ADUserCopyWith<$Res> implements $ADUserCopyWith<$Res> {
  factory _$ADUserCopyWith(_ADUser value, $Res Function(_ADUser) then) =
      __$ADUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? username,
      @JsonKey(name: 'id', defaultValue: '') String? userid,
      String? email,
      String? password});
}

/// @nodoc
class __$ADUserCopyWithImpl<$Res> extends _$ADUserCopyWithImpl<$Res>
    implements _$ADUserCopyWith<$Res> {
  __$ADUserCopyWithImpl(_ADUser _value, $Res Function(_ADUser) _then)
      : super(_value, (v) => _then(v as _ADUser));

  @override
  _ADUser get _value => super._value as _ADUser;

  @override
  $Res call({
    Object? username = freezed,
    Object? userid = freezed,
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_ADUser(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ADUser with DiagnosticableTreeMixin implements _ADUser {
  _$_ADUser(
      {this.username,
      @JsonKey(name: 'id', defaultValue: '') this.userid,
      this.email,
      this.password});

  factory _$_ADUser.fromJson(Map<String, dynamic> json) =>
      _$$_ADUserFromJson(json);

  @override
  final String? username;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  final String? userid;
  @override
  final String? email;
  @override
  final String? password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ADUser(username: $username, userid: $userid, email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ADUser'))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('userid', userid))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ADUser &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.userid, userid) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(userid),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$ADUserCopyWith<_ADUser> get copyWith =>
      __$ADUserCopyWithImpl<_ADUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ADUserToJson(this);
  }
}

abstract class _ADUser implements ADUser {
  factory _ADUser(
      {String? username,
      @JsonKey(name: 'id', defaultValue: '') String? userid,
      String? email,
      String? password}) = _$_ADUser;

  factory _ADUser.fromJson(Map<String, dynamic> json) = _$_ADUser.fromJson;

  @override
  String? get username;
  @override
  @JsonKey(name: 'id', defaultValue: '')
  String? get userid;
  @override
  String? get email;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$ADUserCopyWith<_ADUser> get copyWith => throw _privateConstructorUsedError;
}
