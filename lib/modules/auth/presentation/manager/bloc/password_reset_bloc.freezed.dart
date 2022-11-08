// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_reset_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordResetEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) emailChanged,
    required TResult Function(String input) otpChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() resetPasswordUsed,
    required TResult Function() changedPasswordUsed,
    required TResult Function() verifyOtpUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPasswordUsed value) resetPasswordUsed,
    required TResult Function(_ChangePasswordUsed value) changedPasswordUsed,
    required TResult Function(_VerifyOtpUsed value) verifyOtpUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetEventCopyWith<$Res> {
  factory $PasswordResetEventCopyWith(
          PasswordResetEvent value, $Res Function(PasswordResetEvent) then) =
      _$PasswordResetEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PasswordResetEventCopyWithImpl<$Res>
    implements $PasswordResetEventCopyWith<$Res> {
  _$PasswordResetEventCopyWithImpl(this._value, this._then);

  final PasswordResetEvent _value;
  // ignore: unused_field
  final $Res Function(PasswordResetEvent) _then;
}

/// @nodoc
abstract class _$$_EmailChangedCopyWith<$Res> {
  factory _$$_EmailChangedCopyWith(
          _$_EmailChanged value, $Res Function(_$_EmailChanged) then) =
      __$$_EmailChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$$_EmailChangedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$_EmailChangedCopyWith<$Res> {
  __$$_EmailChangedCopyWithImpl(
      _$_EmailChanged _value, $Res Function(_$_EmailChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailChanged));

  @override
  _$_EmailChanged get _value => super._value as _$_EmailChanged;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$_EmailChanged(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'PasswordResetEvent.emailChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChanged &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      __$$_EmailChangedCopyWithImpl<_$_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) emailChanged,
    required TResult Function(String input) otpChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() resetPasswordUsed,
    required TResult Function() changedPasswordUsed,
    required TResult Function() verifyOtpUsed,
  }) {
    return emailChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
  }) {
    return emailChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPasswordUsed value) resetPasswordUsed,
    required TResult Function(_ChangePasswordUsed value) changedPasswordUsed,
    required TResult Function(_VerifyOtpUsed value) verifyOtpUsed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements PasswordResetEvent {
  const factory _EmailChanged(final String input) = _$_EmailChanged;

  String get input;
  @JsonKey(ignore: true)
  _$$_EmailChangedCopyWith<_$_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtpChangedCopyWith<$Res> {
  factory _$$_OtpChangedCopyWith(
          _$_OtpChanged value, $Res Function(_$_OtpChanged) then) =
      __$$_OtpChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$$_OtpChangedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$_OtpChangedCopyWith<$Res> {
  __$$_OtpChangedCopyWithImpl(
      _$_OtpChanged _value, $Res Function(_$_OtpChanged) _then)
      : super(_value, (v) => _then(v as _$_OtpChanged));

  @override
  _$_OtpChanged get _value => super._value as _$_OtpChanged;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$_OtpChanged(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpChanged implements _OtpChanged {
  const _$_OtpChanged(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'PasswordResetEvent.otpChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpChanged &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      __$$_OtpChangedCopyWithImpl<_$_OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) emailChanged,
    required TResult Function(String input) otpChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() resetPasswordUsed,
    required TResult Function() changedPasswordUsed,
    required TResult Function() verifyOtpUsed,
  }) {
    return otpChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
  }) {
    return otpChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPasswordUsed value) resetPasswordUsed,
    required TResult Function(_ChangePasswordUsed value) changedPasswordUsed,
    required TResult Function(_VerifyOtpUsed value) verifyOtpUsed,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements PasswordResetEvent {
  const factory _OtpChanged(final String input) = _$_OtpChanged;

  String get input;
  @JsonKey(ignore: true)
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$_PasswordChanged));

  @override
  _$_PasswordChanged get _value => super._value as _$_PasswordChanged;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_$_PasswordChanged(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'PasswordResetEvent.passwordChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            const DeepCollectionEquality().equals(other.input, input));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(input));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) emailChanged,
    required TResult Function(String input) otpChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() resetPasswordUsed,
    required TResult Function() changedPasswordUsed,
    required TResult Function() verifyOtpUsed,
  }) {
    return passwordChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
  }) {
    return passwordChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPasswordUsed value) resetPasswordUsed,
    required TResult Function(_ChangePasswordUsed value) changedPasswordUsed,
    required TResult Function(_VerifyOtpUsed value) verifyOtpUsed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements PasswordResetEvent {
  const factory _PasswordChanged(final String input) = _$_PasswordChanged;

  String get input;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetPasswordUsedCopyWith<$Res> {
  factory _$$_ResetPasswordUsedCopyWith(_$_ResetPasswordUsed value,
          $Res Function(_$_ResetPasswordUsed) then) =
      __$$_ResetPasswordUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetPasswordUsedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$_ResetPasswordUsedCopyWith<$Res> {
  __$$_ResetPasswordUsedCopyWithImpl(
      _$_ResetPasswordUsed _value, $Res Function(_$_ResetPasswordUsed) _then)
      : super(_value, (v) => _then(v as _$_ResetPasswordUsed));

  @override
  _$_ResetPasswordUsed get _value => super._value as _$_ResetPasswordUsed;
}

/// @nodoc

class _$_ResetPasswordUsed implements _ResetPasswordUsed {
  const _$_ResetPasswordUsed();

  @override
  String toString() {
    return 'PasswordResetEvent.resetPasswordUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetPasswordUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) emailChanged,
    required TResult Function(String input) otpChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() resetPasswordUsed,
    required TResult Function() changedPasswordUsed,
    required TResult Function() verifyOtpUsed,
  }) {
    return resetPasswordUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
  }) {
    return resetPasswordUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (resetPasswordUsed != null) {
      return resetPasswordUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPasswordUsed value) resetPasswordUsed,
    required TResult Function(_ChangePasswordUsed value) changedPasswordUsed,
    required TResult Function(_VerifyOtpUsed value) verifyOtpUsed,
  }) {
    return resetPasswordUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
  }) {
    return resetPasswordUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (resetPasswordUsed != null) {
      return resetPasswordUsed(this);
    }
    return orElse();
  }
}

abstract class _ResetPasswordUsed implements PasswordResetEvent {
  const factory _ResetPasswordUsed() = _$_ResetPasswordUsed;
}

/// @nodoc
abstract class _$$_ChangePasswordUsedCopyWith<$Res> {
  factory _$$_ChangePasswordUsedCopyWith(_$_ChangePasswordUsed value,
          $Res Function(_$_ChangePasswordUsed) then) =
      __$$_ChangePasswordUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangePasswordUsedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$_ChangePasswordUsedCopyWith<$Res> {
  __$$_ChangePasswordUsedCopyWithImpl(
      _$_ChangePasswordUsed _value, $Res Function(_$_ChangePasswordUsed) _then)
      : super(_value, (v) => _then(v as _$_ChangePasswordUsed));

  @override
  _$_ChangePasswordUsed get _value => super._value as _$_ChangePasswordUsed;
}

/// @nodoc

class _$_ChangePasswordUsed implements _ChangePasswordUsed {
  const _$_ChangePasswordUsed();

  @override
  String toString() {
    return 'PasswordResetEvent.changedPasswordUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangePasswordUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) emailChanged,
    required TResult Function(String input) otpChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() resetPasswordUsed,
    required TResult Function() changedPasswordUsed,
    required TResult Function() verifyOtpUsed,
  }) {
    return changedPasswordUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
  }) {
    return changedPasswordUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (changedPasswordUsed != null) {
      return changedPasswordUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPasswordUsed value) resetPasswordUsed,
    required TResult Function(_ChangePasswordUsed value) changedPasswordUsed,
    required TResult Function(_VerifyOtpUsed value) verifyOtpUsed,
  }) {
    return changedPasswordUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
  }) {
    return changedPasswordUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (changedPasswordUsed != null) {
      return changedPasswordUsed(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordUsed implements PasswordResetEvent {
  const factory _ChangePasswordUsed() = _$_ChangePasswordUsed;
}

/// @nodoc
abstract class _$$_VerifyOtpUsedCopyWith<$Res> {
  factory _$$_VerifyOtpUsedCopyWith(
          _$_VerifyOtpUsed value, $Res Function(_$_VerifyOtpUsed) then) =
      __$$_VerifyOtpUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VerifyOtpUsedCopyWithImpl<$Res>
    extends _$PasswordResetEventCopyWithImpl<$Res>
    implements _$$_VerifyOtpUsedCopyWith<$Res> {
  __$$_VerifyOtpUsedCopyWithImpl(
      _$_VerifyOtpUsed _value, $Res Function(_$_VerifyOtpUsed) _then)
      : super(_value, (v) => _then(v as _$_VerifyOtpUsed));

  @override
  _$_VerifyOtpUsed get _value => super._value as _$_VerifyOtpUsed;
}

/// @nodoc

class _$_VerifyOtpUsed implements _VerifyOtpUsed {
  const _$_VerifyOtpUsed();

  @override
  String toString() {
    return 'PasswordResetEvent.verifyOtpUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VerifyOtpUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String input) emailChanged,
    required TResult Function(String input) otpChanged,
    required TResult Function(String input) passwordChanged,
    required TResult Function() resetPasswordUsed,
    required TResult Function() changedPasswordUsed,
    required TResult Function() verifyOtpUsed,
  }) {
    return verifyOtpUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
  }) {
    return verifyOtpUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String input)? emailChanged,
    TResult Function(String input)? otpChanged,
    TResult Function(String input)? passwordChanged,
    TResult Function()? resetPasswordUsed,
    TResult Function()? changedPasswordUsed,
    TResult Function()? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (verifyOtpUsed != null) {
      return verifyOtpUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ResetPasswordUsed value) resetPasswordUsed,
    required TResult Function(_ChangePasswordUsed value) changedPasswordUsed,
    required TResult Function(_VerifyOtpUsed value) verifyOtpUsed,
  }) {
    return verifyOtpUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
  }) {
    return verifyOtpUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ResetPasswordUsed value)? resetPasswordUsed,
    TResult Function(_ChangePasswordUsed value)? changedPasswordUsed,
    TResult Function(_VerifyOtpUsed value)? verifyOtpUsed,
    required TResult orElse(),
  }) {
    if (verifyOtpUsed != null) {
      return verifyOtpUsed(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtpUsed implements PasswordResetEvent {
  const factory _VerifyOtpUsed() = _$_VerifyOtpUsed;
}

/// @nodoc
mixin _$PasswordResetState {
  Result<UserEmailAddress> get emailAddress =>
      throw _privateConstructorUsedError;
  Result<UserPassword> get password => throw _privateConstructorUsedError;
  Result<UserOtp> get otp => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  IApiResponse? get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordResetStateCopyWith<PasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordResetStateCopyWith<$Res> {
  factory $PasswordResetStateCopyWith(
          PasswordResetState value, $Res Function(PasswordResetState) then) =
      _$PasswordResetStateCopyWithImpl<$Res>;
  $Res call(
      {Result<UserEmailAddress> emailAddress,
      Result<UserPassword> password,
      Result<UserOtp> otp,
      bool showErrorMessages,
      bool isSubmitting,
      IApiResponse? response});
}

/// @nodoc
class _$PasswordResetStateCopyWithImpl<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  _$PasswordResetStateCopyWithImpl(this._value, this._then);

  final PasswordResetState _value;
  // ignore: unused_field
  final $Res Function(PasswordResetState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? otp = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as Result<UserEmailAddress>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Result<UserPassword>,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Result<UserOtp>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as IApiResponse?,
    ));
  }
}

/// @nodoc
abstract class _$$_PasswordResetStateCopyWith<$Res>
    implements $PasswordResetStateCopyWith<$Res> {
  factory _$$_PasswordResetStateCopyWith(_$_PasswordResetState value,
          $Res Function(_$_PasswordResetState) then) =
      __$$_PasswordResetStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Result<UserEmailAddress> emailAddress,
      Result<UserPassword> password,
      Result<UserOtp> otp,
      bool showErrorMessages,
      bool isSubmitting,
      IApiResponse? response});
}

/// @nodoc
class __$$_PasswordResetStateCopyWithImpl<$Res>
    extends _$PasswordResetStateCopyWithImpl<$Res>
    implements _$$_PasswordResetStateCopyWith<$Res> {
  __$$_PasswordResetStateCopyWithImpl(
      _$_PasswordResetState _value, $Res Function(_$_PasswordResetState) _then)
      : super(_value, (v) => _then(v as _$_PasswordResetState));

  @override
  _$_PasswordResetState get _value => super._value as _$_PasswordResetState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? otp = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_PasswordResetState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as Result<UserEmailAddress>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Result<UserPassword>,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as Result<UserOtp>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as IApiResponse?,
    ));
  }
}

/// @nodoc

class _$_PasswordResetState implements _PasswordResetState {
  _$_PasswordResetState(
      {required this.emailAddress,
      required this.password,
      required this.otp,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.response});

  @override
  final Result<UserEmailAddress> emailAddress;
  @override
  final Result<UserPassword> password;
  @override
  final Result<UserOtp> otp;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final IApiResponse? response;

  @override
  String toString() {
    return 'PasswordResetState(emailAddress: $emailAddress, password: $password, otp: $otp, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordResetState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.response, response));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(response));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordResetStateCopyWith<_$_PasswordResetState> get copyWith =>
      __$$_PasswordResetStateCopyWithImpl<_$_PasswordResetState>(
          this, _$identity);
}

abstract class _PasswordResetState implements PasswordResetState {
  factory _PasswordResetState(
      {required final Result<UserEmailAddress> emailAddress,
      required final Result<UserPassword> password,
      required final Result<UserOtp> otp,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final IApiResponse? response}) = _$_PasswordResetState;

  @override
  Result<UserEmailAddress> get emailAddress;
  @override
  Result<UserPassword> get password;
  @override
  Result<UserOtp> get otp;
  @override
  bool get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  IApiResponse? get response;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordResetStateCopyWith<_$_PasswordResetState> get copyWith =>
      throw _privateConstructorUsedError;
}
