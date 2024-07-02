// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'country_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CountryEvent {
  Country get country => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country country)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Change value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryEventCopyWith<CountryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryEventCopyWith<$Res> {
  factory $CountryEventCopyWith(
          CountryEvent value, $Res Function(CountryEvent) then) =
      _$CountryEventCopyWithImpl<$Res, CountryEvent>;
  @useResult
  $Res call({Country country});
}

/// @nodoc
class _$CountryEventCopyWithImpl<$Res, $Val extends CountryEvent>
    implements $CountryEventCopyWith<$Res> {
  _$CountryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeImplCopyWith<$Res>
    implements $CountryEventCopyWith<$Res> {
  factory _$$ChangeImplCopyWith(
          _$ChangeImpl value, $Res Function(_$ChangeImpl) then) =
      __$$ChangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Country country});
}

/// @nodoc
class __$$ChangeImplCopyWithImpl<$Res>
    extends _$CountryEventCopyWithImpl<$Res, _$ChangeImpl>
    implements _$$ChangeImplCopyWith<$Res> {
  __$$ChangeImplCopyWithImpl(
      _$ChangeImpl _value, $Res Function(_$ChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$ChangeImpl(
      null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$ChangeImpl implements _Change {
  const _$ChangeImpl(this.country);

  @override
  final Country country;

  @override
  String toString() {
    return 'CountryEvent.change(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      __$$ChangeImplCopyWithImpl<_$ChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Country country) change,
  }) {
    return change(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Country country)? change,
  }) {
    return change?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Country country)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Change value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _Change implements CountryEvent {
  const factory _Change(final Country country) = _$ChangeImpl;

  @override
  Country get country;
  @override
  @JsonKey(ignore: true)
  _$$ChangeImplCopyWith<_$ChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CountryState {
  Country get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryStateCopyWith<CountryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryStateCopyWith<$Res> {
  factory $CountryStateCopyWith(
          CountryState value, $Res Function(CountryState) then) =
      _$CountryStateCopyWithImpl<$Res, CountryState>;
  @useResult
  $Res call({Country country});
}

/// @nodoc
class _$CountryStateCopyWithImpl<$Res, $Val extends CountryState>
    implements $CountryStateCopyWith<$Res> {
  _$CountryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CountryStateImplCopyWith<$Res>
    implements $CountryStateCopyWith<$Res> {
  factory _$$CountryStateImplCopyWith(
          _$CountryStateImpl value, $Res Function(_$CountryStateImpl) then) =
      __$$CountryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Country country});
}

/// @nodoc
class __$$CountryStateImplCopyWithImpl<$Res>
    extends _$CountryStateCopyWithImpl<$Res, _$CountryStateImpl>
    implements _$$CountryStateImplCopyWith<$Res> {
  __$$CountryStateImplCopyWithImpl(
      _$CountryStateImpl _value, $Res Function(_$CountryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$CountryStateImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$CountryStateImpl implements _CountryState {
  const _$CountryStateImpl({required this.country});

  @override
  final Country country;

  @override
  String toString() {
    return 'CountryState(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CountryStateImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CountryStateImplCopyWith<_$CountryStateImpl> get copyWith =>
      __$$CountryStateImplCopyWithImpl<_$CountryStateImpl>(this, _$identity);
}

abstract class _CountryState implements CountryState {
  const factory _CountryState({required final Country country}) =
      _$CountryStateImpl;

  @override
  Country get country;
  @override
  @JsonKey(ignore: true)
  _$$CountryStateImplCopyWith<_$CountryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
