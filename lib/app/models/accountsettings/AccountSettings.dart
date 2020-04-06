/*
 *
 * Copyright (c) 2020. Lauro Cesar Oliveira <lauro@hostcert.com.br>
 *
 * https://www.linkedin.com/in/lauro-cesar/
 *
 */
import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:caminhos_do_saber/app/models/serializers.dart';
part 'AccountSettings.g.dart';

abstract class AccountSettings implements Built<AccountSettings, AccountSettingsBuilder> {
  String get firstName;
  String get middleName;
  String get lastName;
  String get accessToken;
  String get userName;

  String toJson(){
    return json
        .encode(serializers.serializeWith(AccountSettings.serializer, this));
  }

  static AccountSettings fromJson(String fromJson){
    return serializers.deserializeWith(AccountSettings.serializer, json.decode(fromJson));
  }

  static Serializer<AccountSettings> get serializer => _$accountSettingsSerializer;

  AccountSettings._();
  factory AccountSettings([updates(AccountSettingsBuilder b)]) = _$AccountSettings;

}