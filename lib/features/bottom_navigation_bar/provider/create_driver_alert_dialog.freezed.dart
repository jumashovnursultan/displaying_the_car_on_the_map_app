// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_driver_alert_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateDriverState {
  CreateDriverStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateDriverStateCopyWith<CreateDriverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateDriverStateCopyWith<$Res> {
  factory $CreateDriverStateCopyWith(
          CreateDriverState value, $Res Function(CreateDriverState) then) =
      _$CreateDriverStateCopyWithImpl<$Res, CreateDriverState>;
  @useResult
  $Res call({CreateDriverStatus status});
}

/// @nodoc
class _$CreateDriverStateCopyWithImpl<$Res, $Val extends CreateDriverState>
    implements $CreateDriverStateCopyWith<$Res> {
  _$CreateDriverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateDriverStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateDriverStateImplCopyWith<$Res>
    implements $CreateDriverStateCopyWith<$Res> {
  factory _$$CreateDriverStateImplCopyWith(_$CreateDriverStateImpl value,
          $Res Function(_$CreateDriverStateImpl) then) =
      __$$CreateDriverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CreateDriverStatus status});
}

/// @nodoc
class __$$CreateDriverStateImplCopyWithImpl<$Res>
    extends _$CreateDriverStateCopyWithImpl<$Res, _$CreateDriverStateImpl>
    implements _$$CreateDriverStateImplCopyWith<$Res> {
  __$$CreateDriverStateImplCopyWithImpl(_$CreateDriverStateImpl _value,
      $Res Function(_$CreateDriverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$CreateDriverStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CreateDriverStatus,
    ));
  }
}

/// @nodoc

class _$CreateDriverStateImpl implements _CreateDriverState {
  const _$CreateDriverStateImpl({required this.status});

  @override
  final CreateDriverStatus status;

  @override
  String toString() {
    return 'CreateDriverState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateDriverStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateDriverStateImplCopyWith<_$CreateDriverStateImpl> get copyWith =>
      __$$CreateDriverStateImplCopyWithImpl<_$CreateDriverStateImpl>(
          this, _$identity);
}

abstract class _CreateDriverState implements CreateDriverState {
  const factory _CreateDriverState({required final CreateDriverStatus status}) =
      _$CreateDriverStateImpl;

  @override
  CreateDriverStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$CreateDriverStateImplCopyWith<_$CreateDriverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
