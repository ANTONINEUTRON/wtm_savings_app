// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      emailAddress: json['emailAddress'] as String,
      fullName: json['fullName'] as String,
      balance: (json['balance'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'fullName': instance.fullName,
      'balance': instance.balance,
    };
