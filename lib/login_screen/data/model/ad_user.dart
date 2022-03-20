import 'package:flutter/foundation.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'ad_user.freezed.dart';
part 'ad_user.g.dart';

@freezed
class ADUser with _$ADUser {
  factory ADUser({
    String? username,
    @JsonKey(name: 'id', defaultValue: '') String? userid,
    String? email,
    String? password,
  }) = _ADUser;

  factory ADUser.fromJson(Map<String, dynamic> jsonObj) =>
      _$ADUserFromJson(jsonObj);
}
