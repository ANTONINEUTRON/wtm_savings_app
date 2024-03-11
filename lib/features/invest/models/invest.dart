import 'package:freezed_annotation/freezed_annotation.dart';

part 'invest.freezed.dart';

@freezed
class Invest with _$Invest{
  const factory Invest({
    required String title,
    required String returns,
    required String banner,
  }) = _Invest;
}