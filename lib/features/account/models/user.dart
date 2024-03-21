
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$User{
  const factory UserModel({
      required String emailAddress,
      required String fullName,
      @Default(0) double balance,
  }) = _User;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}