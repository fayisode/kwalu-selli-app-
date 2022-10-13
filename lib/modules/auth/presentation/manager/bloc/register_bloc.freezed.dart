// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
}

/// @nodoc
abstract class _$$_EmailAddressChangedCopyWith<$Res> {
  factory _$$_EmailAddressChangedCopyWith(_$_EmailAddressChanged value,
          $Res Function(_$_EmailAddressChanged) then) =
      __$$_EmailAddressChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$$_EmailAddressChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_EmailAddressChangedCopyWith<$Res> {
  __$$_EmailAddressChangedCopyWithImpl(_$_EmailAddressChanged _value,
      $Res Function(_$_EmailAddressChanged) _then)
      : super(_value, (v) => _then(v as _$_EmailAddressChanged));

  @override
  _$_EmailAddressChanged get _value => super._value as _$_EmailAddressChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_EmailAddressChanged(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailAddressChanged implements _EmailAddressChanged {
  const _$_EmailAddressChanged(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'RegisterEvent.emailAddressChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailAddressChanged &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      __$$_EmailAddressChangedCopyWithImpl<_$_EmailAddressChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return emailAddressChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return emailAddressChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return emailAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return emailAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (emailAddressChanged != null) {
      return emailAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailAddressChanged implements RegisterEvent {
  const factory _EmailAddressChanged(final String email) =
      _$_EmailAddressChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailAddressChangedCopyWith<_$_EmailAddressChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _$_PasswordChanged));

  @override
  _$_PasswordChanged get _value => super._value as _$_PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_PasswordChanged(
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FirstNameChangedCopyWith<$Res> {
  factory _$$_FirstNameChangedCopyWith(
          _$_FirstNameChanged value, $Res Function(_$_FirstNameChanged) then) =
      __$$_FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class __$$_FirstNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_FirstNameChangedCopyWith<$Res> {
  __$$_FirstNameChangedCopyWithImpl(
      _$_FirstNameChanged _value, $Res Function(_$_FirstNameChanged) _then)
      : super(_value, (v) => _then(v as _$_FirstNameChanged));

  @override
  _$_FirstNameChanged get _value => super._value as _$_FirstNameChanged;

  @override
  $Res call({
    Object? firstName = freezed,
  }) {
    return _then(_$_FirstNameChanged(
      firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FirstNameChanged implements _FirstNameChanged {
  const _$_FirstNameChanged(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirstNameChanged &&
            const DeepCollectionEquality().equals(other.firstName, firstName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(firstName));

  @JsonKey(ignore: true)
  @override
  _$$_FirstNameChangedCopyWith<_$_FirstNameChanged> get copyWith =>
      __$$_FirstNameChangedCopyWithImpl<_$_FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return firstNameChanged?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return firstNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FirstNameChanged implements RegisterEvent {
  const factory _FirstNameChanged(final String firstName) = _$_FirstNameChanged;

  String get firstName;
  @JsonKey(ignore: true)
  _$$_FirstNameChangedCopyWith<_$_FirstNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastNameChangedCopyWith<$Res> {
  factory _$$_LastNameChangedCopyWith(
          _$_LastNameChanged value, $Res Function(_$_LastNameChanged) then) =
      __$$_LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class __$$_LastNameChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_LastNameChangedCopyWith<$Res> {
  __$$_LastNameChangedCopyWithImpl(
      _$_LastNameChanged _value, $Res Function(_$_LastNameChanged) _then)
      : super(_value, (v) => _then(v as _$_LastNameChanged));

  @override
  _$_LastNameChanged get _value => super._value as _$_LastNameChanged;

  @override
  $Res call({
    Object? lastName = freezed,
  }) {
    return _then(_$_LastNameChanged(
      lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LastNameChanged implements _LastNameChanged {
  const _$_LastNameChanged(this.lastName);

  @override
  final String lastName;

  @override
  String toString() {
    return 'RegisterEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastNameChanged &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$$_LastNameChangedCopyWith<_$_LastNameChanged> get copyWith =>
      __$$_LastNameChangedCopyWithImpl<_$_LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return lastNameChanged?.call(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return lastNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class _LastNameChanged implements RegisterEvent {
  const factory _LastNameChanged(final String lastName) = _$_LastNameChanged;

  String get lastName;
  @JsonKey(ignore: true)
  _$$_LastNameChangedCopyWith<_$_LastNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NationalIdChangedCopyWith<$Res> {
  factory _$$_NationalIdChangedCopyWith(_$_NationalIdChanged value,
          $Res Function(_$_NationalIdChanged) then) =
      __$$_NationalIdChangedCopyWithImpl<$Res>;
  $Res call({String nationalId});
}

/// @nodoc
class __$$_NationalIdChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_NationalIdChangedCopyWith<$Res> {
  __$$_NationalIdChangedCopyWithImpl(
      _$_NationalIdChanged _value, $Res Function(_$_NationalIdChanged) _then)
      : super(_value, (v) => _then(v as _$_NationalIdChanged));

  @override
  _$_NationalIdChanged get _value => super._value as _$_NationalIdChanged;

  @override
  $Res call({
    Object? nationalId = freezed,
  }) {
    return _then(_$_NationalIdChanged(
      nationalId == freezed
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NationalIdChanged implements _NationalIdChanged {
  const _$_NationalIdChanged(this.nationalId);

  @override
  final String nationalId;

  @override
  String toString() {
    return 'RegisterEvent.nationalIdChanged(nationalId: $nationalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NationalIdChanged &&
            const DeepCollectionEquality()
                .equals(other.nationalId, nationalId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nationalId));

  @JsonKey(ignore: true)
  @override
  _$$_NationalIdChangedCopyWith<_$_NationalIdChanged> get copyWith =>
      __$$_NationalIdChangedCopyWithImpl<_$_NationalIdChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return nationalIdChanged(nationalId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return nationalIdChanged?.call(nationalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (nationalIdChanged != null) {
      return nationalIdChanged(nationalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return nationalIdChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return nationalIdChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (nationalIdChanged != null) {
      return nationalIdChanged(this);
    }
    return orElse();
  }
}

abstract class _NationalIdChanged implements RegisterEvent {
  const factory _NationalIdChanged(final String nationalId) =
      _$_NationalIdChanged;

  String get nationalId;
  @JsonKey(ignore: true)
  _$$_NationalIdChangedCopyWith<_$_NationalIdChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneNumberChangedCopyWith<$Res> {
  factory _$$_PhoneNumberChangedCopyWith(_$_PhoneNumberChanged value,
          $Res Function(_$_PhoneNumberChanged) then) =
      __$$_PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_PhoneNumberChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_PhoneNumberChangedCopyWith<$Res> {
  __$$_PhoneNumberChangedCopyWithImpl(
      _$_PhoneNumberChanged _value, $Res Function(_$_PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as _$_PhoneNumberChanged));

  @override
  _$_PhoneNumberChanged get _value => super._value as _$_PhoneNumberChanged;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_$_PhoneNumberChanged(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberChanged &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(phoneNumber));

  @JsonKey(ignore: true)
  @override
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      __$$_PhoneNumberChangedCopyWithImpl<_$_PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements RegisterEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$_PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LocationChangedCopyWith<$Res> {
  factory _$$_LocationChangedCopyWith(
          _$_LocationChanged value, $Res Function(_$_LocationChanged) then) =
      __$$_LocationChangedCopyWithImpl<$Res>;
  $Res call({String location});
}

/// @nodoc
class __$$_LocationChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_LocationChangedCopyWith<$Res> {
  __$$_LocationChangedCopyWithImpl(
      _$_LocationChanged _value, $Res Function(_$_LocationChanged) _then)
      : super(_value, (v) => _then(v as _$_LocationChanged));

  @override
  _$_LocationChanged get _value => super._value as _$_LocationChanged;

  @override
  $Res call({
    Object? location = freezed,
  }) {
    return _then(_$_LocationChanged(
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LocationChanged implements _LocationChanged {
  const _$_LocationChanged(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'RegisterEvent.locationChanged(location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationChanged &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      __$$_LocationChangedCopyWithImpl<_$_LocationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return locationChanged(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return locationChanged?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return locationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return locationChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (locationChanged != null) {
      return locationChanged(this);
    }
    return orElse();
  }
}

abstract class _LocationChanged implements RegisterEvent {
  const factory _LocationChanged(final String location) = _$_LocationChanged;

  String get location;
  @JsonKey(ignore: true)
  _$$_LocationChangedCopyWith<_$_LocationChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitUsedCopyWith<$Res> {
  factory _$$_SubmitUsedCopyWith(
          _$_SubmitUsed value, $Res Function(_$_SubmitUsed) then) =
      __$$_SubmitUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitUsedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_SubmitUsedCopyWith<$Res> {
  __$$_SubmitUsedCopyWithImpl(
      _$_SubmitUsed _value, $Res Function(_$_SubmitUsed) _then)
      : super(_value, (v) => _then(v as _$_SubmitUsed));

  @override
  _$_SubmitUsed get _value => super._value as _$_SubmitUsed;
}

/// @nodoc

class _$_SubmitUsed implements _SubmitUsed {
  const _$_SubmitUsed();

  @override
  String toString() {
    return 'RegisterEvent.submitUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmitUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return submitUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return submitUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (submitUsed != null) {
      return submitUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return submitUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return submitUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (submitUsed != null) {
      return submitUsed(this);
    }
    return orElse();
  }
}

abstract class _SubmitUsed implements RegisterEvent {
  const factory _SubmitUsed() = _$_SubmitUsed;
}

/// @nodoc
abstract class _$$_MoveToPersonalInfoUsedCopyWith<$Res> {
  factory _$$_MoveToPersonalInfoUsedCopyWith(_$_MoveToPersonalInfoUsed value,
          $Res Function(_$_MoveToPersonalInfoUsed) then) =
      __$$_MoveToPersonalInfoUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MoveToPersonalInfoUsedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_MoveToPersonalInfoUsedCopyWith<$Res> {
  __$$_MoveToPersonalInfoUsedCopyWithImpl(_$_MoveToPersonalInfoUsed _value,
      $Res Function(_$_MoveToPersonalInfoUsed) _then)
      : super(_value, (v) => _then(v as _$_MoveToPersonalInfoUsed));

  @override
  _$_MoveToPersonalInfoUsed get _value =>
      super._value as _$_MoveToPersonalInfoUsed;
}

/// @nodoc

class _$_MoveToPersonalInfoUsed implements _MoveToPersonalInfoUsed {
  const _$_MoveToPersonalInfoUsed();

  @override
  String toString() {
    return 'RegisterEvent.moveToPersonalInfoUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoveToPersonalInfoUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return moveToPersonalInfoUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return moveToPersonalInfoUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (moveToPersonalInfoUsed != null) {
      return moveToPersonalInfoUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return moveToPersonalInfoUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return moveToPersonalInfoUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (moveToPersonalInfoUsed != null) {
      return moveToPersonalInfoUsed(this);
    }
    return orElse();
  }
}

abstract class _MoveToPersonalInfoUsed implements RegisterEvent {
  const factory _MoveToPersonalInfoUsed() = _$_MoveToPersonalInfoUsed;
}

/// @nodoc
abstract class _$$_ClearMoveToPersonalInfoStateUsedCopyWith<$Res> {
  factory _$$_ClearMoveToPersonalInfoStateUsedCopyWith(
          _$_ClearMoveToPersonalInfoStateUsed value,
          $Res Function(_$_ClearMoveToPersonalInfoStateUsed) then) =
      __$$_ClearMoveToPersonalInfoStateUsedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClearMoveToPersonalInfoStateUsedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$$_ClearMoveToPersonalInfoStateUsedCopyWith<$Res> {
  __$$_ClearMoveToPersonalInfoStateUsedCopyWithImpl(
      _$_ClearMoveToPersonalInfoStateUsed _value,
      $Res Function(_$_ClearMoveToPersonalInfoStateUsed) _then)
      : super(_value, (v) => _then(v as _$_ClearMoveToPersonalInfoStateUsed));

  @override
  _$_ClearMoveToPersonalInfoStateUsed get _value =>
      super._value as _$_ClearMoveToPersonalInfoStateUsed;
}

/// @nodoc

class _$_ClearMoveToPersonalInfoStateUsed
    implements _ClearMoveToPersonalInfoStateUsed {
  const _$_ClearMoveToPersonalInfoStateUsed();

  @override
  String toString() {
    return 'RegisterEvent.clearMoveToPersonalInfoStateUsed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearMoveToPersonalInfoStateUsed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailAddressChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String firstName) firstNameChanged,
    required TResult Function(String lastName) lastNameChanged,
    required TResult Function(String nationalId) nationalIdChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String location) locationChanged,
    required TResult Function() submitUsed,
    required TResult Function() moveToPersonalInfoUsed,
    required TResult Function() clearMoveToPersonalInfoStateUsed,
  }) {
    return clearMoveToPersonalInfoStateUsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
  }) {
    return clearMoveToPersonalInfoStateUsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailAddressChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String firstName)? firstNameChanged,
    TResult Function(String lastName)? lastNameChanged,
    TResult Function(String nationalId)? nationalIdChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String location)? locationChanged,
    TResult Function()? submitUsed,
    TResult Function()? moveToPersonalInfoUsed,
    TResult Function()? clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (clearMoveToPersonalInfoStateUsed != null) {
      return clearMoveToPersonalInfoStateUsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAddressChanged value) emailAddressChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_FirstNameChanged value) firstNameChanged,
    required TResult Function(_LastNameChanged value) lastNameChanged,
    required TResult Function(_NationalIdChanged value) nationalIdChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_LocationChanged value) locationChanged,
    required TResult Function(_SubmitUsed value) submitUsed,
    required TResult Function(_MoveToPersonalInfoUsed value)
        moveToPersonalInfoUsed,
    required TResult Function(_ClearMoveToPersonalInfoStateUsed value)
        clearMoveToPersonalInfoStateUsed,
  }) {
    return clearMoveToPersonalInfoStateUsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
  }) {
    return clearMoveToPersonalInfoStateUsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAddressChanged value)? emailAddressChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_FirstNameChanged value)? firstNameChanged,
    TResult Function(_LastNameChanged value)? lastNameChanged,
    TResult Function(_NationalIdChanged value)? nationalIdChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_LocationChanged value)? locationChanged,
    TResult Function(_SubmitUsed value)? submitUsed,
    TResult Function(_MoveToPersonalInfoUsed value)? moveToPersonalInfoUsed,
    TResult Function(_ClearMoveToPersonalInfoStateUsed value)?
        clearMoveToPersonalInfoStateUsed,
    required TResult orElse(),
  }) {
    if (clearMoveToPersonalInfoStateUsed != null) {
      return clearMoveToPersonalInfoStateUsed(this);
    }
    return orElse();
  }
}

abstract class _ClearMoveToPersonalInfoStateUsed implements RegisterEvent {
  const factory _ClearMoveToPersonalInfoStateUsed() =
      _$_ClearMoveToPersonalInfoStateUsed;
}

/// @nodoc
mixin _$RegisterState {
  Result<UserEmailAddress> get email => throw _privateConstructorUsedError;
  Result<UserName> get firstName => throw _privateConstructorUsedError;
  Result<UserName> get lastName => throw _privateConstructorUsedError;
  Result<UserPassword> get password => throw _privateConstructorUsedError;
  Result<UserNationalId> get nationalId => throw _privateConstructorUsedError;
  Result<UserPhoneNumber> get phoneNumber => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get moveToPersonalInfo => throw _privateConstructorUsedError;
  IApiResponse? get useCaseResponse => throw _privateConstructorUsedError;
  String get passwordString => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {Result<UserEmailAddress> email,
      Result<UserName> firstName,
      Result<UserName> lastName,
      Result<UserPassword> password,
      Result<UserNationalId> nationalId,
      Result<UserPhoneNumber> phoneNumber,
      String location,
      bool isSubmitting,
      bool showErrorMessage,
      bool moveToPersonalInfo,
      IApiResponse? useCaseResponse,
      String passwordString});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? password = freezed,
    Object? nationalId = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? moveToPersonalInfo = freezed,
    Object? useCaseResponse = freezed,
    Object? passwordString = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Result<UserEmailAddress>,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as Result<UserName>,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as Result<UserName>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Result<UserPassword>,
      nationalId: nationalId == freezed
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as Result<UserNationalId>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Result<UserPhoneNumber>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      moveToPersonalInfo: moveToPersonalInfo == freezed
          ? _value.moveToPersonalInfo
          : moveToPersonalInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      useCaseResponse: useCaseResponse == freezed
          ? _value.useCaseResponse
          : useCaseResponse // ignore: cast_nullable_to_non_nullable
              as IApiResponse?,
      passwordString: passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Result<UserEmailAddress> email,
      Result<UserName> firstName,
      Result<UserName> lastName,
      Result<UserPassword> password,
      Result<UserNationalId> nationalId,
      Result<UserPhoneNumber> phoneNumber,
      String location,
      bool isSubmitting,
      bool showErrorMessage,
      bool moveToPersonalInfo,
      IApiResponse? useCaseResponse,
      String passwordString});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, (v) => _then(v as _$_RegisterState));

  @override
  _$_RegisterState get _value => super._value as _$_RegisterState;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? password = freezed,
    Object? nationalId = freezed,
    Object? phoneNumber = freezed,
    Object? location = freezed,
    Object? isSubmitting = freezed,
    Object? showErrorMessage = freezed,
    Object? moveToPersonalInfo = freezed,
    Object? useCaseResponse = freezed,
    Object? passwordString = freezed,
  }) {
    return _then(_$_RegisterState(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Result<UserEmailAddress>,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as Result<UserName>,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as Result<UserName>,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Result<UserPassword>,
      nationalId: nationalId == freezed
          ? _value.nationalId
          : nationalId // ignore: cast_nullable_to_non_nullable
              as Result<UserNationalId>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Result<UserPhoneNumber>,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      moveToPersonalInfo: moveToPersonalInfo == freezed
          ? _value.moveToPersonalInfo
          : moveToPersonalInfo // ignore: cast_nullable_to_non_nullable
              as bool,
      useCaseResponse: useCaseResponse == freezed
          ? _value.useCaseResponse
          : useCaseResponse // ignore: cast_nullable_to_non_nullable
              as IApiResponse?,
      passwordString: passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  _$_RegisterState(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.nationalId,
      required this.phoneNumber,
      required this.location,
      required this.isSubmitting,
      required this.showErrorMessage,
      required this.moveToPersonalInfo,
      required this.useCaseResponse,
      required this.passwordString});

  @override
  final Result<UserEmailAddress> email;
  @override
  final Result<UserName> firstName;
  @override
  final Result<UserName> lastName;
  @override
  final Result<UserPassword> password;
  @override
  final Result<UserNationalId> nationalId;
  @override
  final Result<UserPhoneNumber> phoneNumber;
  @override
  final String location;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;
  @override
  final bool moveToPersonalInfo;
  @override
  final IApiResponse? useCaseResponse;
  @override
  final String passwordString;

  @override
  String toString() {
    return 'RegisterState(email: $email, firstName: $firstName, lastName: $lastName, password: $password, nationalId: $nationalId, phoneNumber: $phoneNumber, location: $location, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, moveToPersonalInfo: $moveToPersonalInfo, useCaseResponse: $useCaseResponse, passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.nationalId, nationalId) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessage, showErrorMessage) &&
            const DeepCollectionEquality()
                .equals(other.moveToPersonalInfo, moveToPersonalInfo) &&
            const DeepCollectionEquality()
                .equals(other.useCaseResponse, useCaseResponse) &&
            const DeepCollectionEquality()
                .equals(other.passwordString, passwordString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(nationalId),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(showErrorMessage),
      const DeepCollectionEquality().hash(moveToPersonalInfo),
      const DeepCollectionEquality().hash(useCaseResponse),
      const DeepCollectionEquality().hash(passwordString));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  factory _RegisterState(
      {required final Result<UserEmailAddress> email,
      required final Result<UserName> firstName,
      required final Result<UserName> lastName,
      required final Result<UserPassword> password,
      required final Result<UserNationalId> nationalId,
      required final Result<UserPhoneNumber> phoneNumber,
      required final String location,
      required final bool isSubmitting,
      required final bool showErrorMessage,
      required final bool moveToPersonalInfo,
      required final IApiResponse? useCaseResponse,
      required final String passwordString}) = _$_RegisterState;

  @override
  Result<UserEmailAddress> get email;
  @override
  Result<UserName> get firstName;
  @override
  Result<UserName> get lastName;
  @override
  Result<UserPassword> get password;
  @override
  Result<UserNationalId> get nationalId;
  @override
  Result<UserPhoneNumber> get phoneNumber;
  @override
  String get location;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  bool get moveToPersonalInfo;
  @override
  IApiResponse? get useCaseResponse;
  @override
  String get passwordString;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
