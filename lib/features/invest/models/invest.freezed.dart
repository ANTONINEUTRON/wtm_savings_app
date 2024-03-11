// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Invest {
  String get title => throw _privateConstructorUsedError;
  String get returns => throw _privateConstructorUsedError;
  String get banner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InvestCopyWith<Invest> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestCopyWith<$Res> {
  factory $InvestCopyWith(Invest value, $Res Function(Invest) then) =
      _$InvestCopyWithImpl<$Res, Invest>;
  @useResult
  $Res call({String title, String returns, String banner});
}

/// @nodoc
class _$InvestCopyWithImpl<$Res, $Val extends Invest>
    implements $InvestCopyWith<$Res> {
  _$InvestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? returns = null,
    Object? banner = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      returns: null == returns
          ? _value.returns
          : returns // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvestImplCopyWith<$Res> implements $InvestCopyWith<$Res> {
  factory _$$InvestImplCopyWith(
          _$InvestImpl value, $Res Function(_$InvestImpl) then) =
      __$$InvestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String returns, String banner});
}

/// @nodoc
class __$$InvestImplCopyWithImpl<$Res>
    extends _$InvestCopyWithImpl<$Res, _$InvestImpl>
    implements _$$InvestImplCopyWith<$Res> {
  __$$InvestImplCopyWithImpl(
      _$InvestImpl _value, $Res Function(_$InvestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? returns = null,
    Object? banner = null,
  }) {
    return _then(_$InvestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      returns: null == returns
          ? _value.returns
          : returns // ignore: cast_nullable_to_non_nullable
              as String,
      banner: null == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvestImpl implements _Invest {
  const _$InvestImpl(
      {required this.title, required this.returns, required this.banner});

  @override
  final String title;
  @override
  final String returns;
  @override
  final String banner;

  @override
  String toString() {
    return 'Invest(title: $title, returns: $returns, banner: $banner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.returns, returns) || other.returns == returns) &&
            (identical(other.banner, banner) || other.banner == banner));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, returns, banner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestImplCopyWith<_$InvestImpl> get copyWith =>
      __$$InvestImplCopyWithImpl<_$InvestImpl>(this, _$identity);
}

abstract class _Invest implements Invest {
  const factory _Invest(
      {required final String title,
      required final String returns,
      required final String banner}) = _$InvestImpl;

  @override
  String get title;
  @override
  String get returns;
  @override
  String get banner;
  @override
  @JsonKey(ignore: true)
  _$$InvestImplCopyWith<_$InvestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
