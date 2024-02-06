// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_doc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadDocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocEventCopyWith<$Res> {
  factory $UploadDocEventCopyWith(
          UploadDocEvent value, $Res Function(UploadDocEvent) then) =
      _$UploadDocEventCopyWithImpl<$Res, UploadDocEvent>;
}

/// @nodoc
class _$UploadDocEventCopyWithImpl<$Res, $Val extends UploadDocEvent>
    implements $UploadDocEventCopyWith<$Res> {
  _$UploadDocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UploadDocEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UploadDocEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GoToNextStepImplCopyWith<$Res> {
  factory _$$GoToNextStepImplCopyWith(
          _$GoToNextStepImpl value, $Res Function(_$GoToNextStepImpl) then) =
      __$$GoToNextStepImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoToNextStepImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$GoToNextStepImpl>
    implements _$$GoToNextStepImplCopyWith<$Res> {
  __$$GoToNextStepImplCopyWithImpl(
      _$GoToNextStepImpl _value, $Res Function(_$GoToNextStepImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GoToNextStepImpl implements _GoToNextStep {
  const _$GoToNextStepImpl();

  @override
  String toString() {
    return 'UploadDocEvent.goToNextStep()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoToNextStepImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return goToNextStep();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return goToNextStep?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (goToNextStep != null) {
      return goToNextStep();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return goToNextStep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return goToNextStep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (goToNextStep != null) {
      return goToNextStep(this);
    }
    return orElse();
  }
}

abstract class _GoToNextStep implements UploadDocEvent {
  const factory _GoToNextStep() = _$GoToNextStepImpl;
}

/// @nodoc
abstract class _$$FullNameChangedImplCopyWith<$Res> {
  factory _$$FullNameChangedImplCopyWith(_$FullNameChangedImpl value,
          $Res Function(_$FullNameChangedImpl) then) =
      __$$FullNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fullName});
}

/// @nodoc
class __$$FullNameChangedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$FullNameChangedImpl>
    implements _$$FullNameChangedImplCopyWith<$Res> {
  __$$FullNameChangedImplCopyWithImpl(
      _$FullNameChangedImpl _value, $Res Function(_$FullNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = null,
  }) {
    return _then(_$FullNameChangedImpl(
      null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FullNameChangedImpl implements _FullNameChanged {
  const _$FullNameChangedImpl(this.fullName);

  @override
  final String fullName;

  @override
  String toString() {
    return 'UploadDocEvent.fullNameChanged(fullName: $fullName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullNameChangedImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullNameChangedImplCopyWith<_$FullNameChangedImpl> get copyWith =>
      __$$FullNameChangedImplCopyWithImpl<_$FullNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return fullNameChanged(fullName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return fullNameChanged?.call(fullName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(fullName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return fullNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return fullNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (fullNameChanged != null) {
      return fullNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FullNameChanged implements UploadDocEvent {
  const factory _FullNameChanged(final String fullName) = _$FullNameChangedImpl;

  String get fullName;
  @JsonKey(ignore: true)
  _$$FullNameChangedImplCopyWith<_$FullNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TemporaryAddressChangedImplCopyWith<$Res> {
  factory _$$TemporaryAddressChangedImplCopyWith(
          _$TemporaryAddressChangedImpl value,
          $Res Function(_$TemporaryAddressChangedImpl) then) =
      __$$TemporaryAddressChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String tempAddress});
}

/// @nodoc
class __$$TemporaryAddressChangedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$TemporaryAddressChangedImpl>
    implements _$$TemporaryAddressChangedImplCopyWith<$Res> {
  __$$TemporaryAddressChangedImplCopyWithImpl(
      _$TemporaryAddressChangedImpl _value,
      $Res Function(_$TemporaryAddressChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tempAddress = null,
  }) {
    return _then(_$TemporaryAddressChangedImpl(
      null == tempAddress
          ? _value.tempAddress
          : tempAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TemporaryAddressChangedImpl implements _TemporaryAddressChanged {
  const _$TemporaryAddressChangedImpl(this.tempAddress);

  @override
  final String tempAddress;

  @override
  String toString() {
    return 'UploadDocEvent.temporaryAddressChanged(tempAddress: $tempAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemporaryAddressChangedImpl &&
            (identical(other.tempAddress, tempAddress) ||
                other.tempAddress == tempAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tempAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemporaryAddressChangedImplCopyWith<_$TemporaryAddressChangedImpl>
      get copyWith => __$$TemporaryAddressChangedImplCopyWithImpl<
          _$TemporaryAddressChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return temporaryAddressChanged(tempAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return temporaryAddressChanged?.call(tempAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (temporaryAddressChanged != null) {
      return temporaryAddressChanged(tempAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return temporaryAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return temporaryAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (temporaryAddressChanged != null) {
      return temporaryAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _TemporaryAddressChanged implements UploadDocEvent {
  const factory _TemporaryAddressChanged(final String tempAddress) =
      _$TemporaryAddressChangedImpl;

  String get tempAddress;
  @JsonKey(ignore: true)
  _$$TemporaryAddressChangedImplCopyWith<_$TemporaryAddressChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermanantAddressChangedImplCopyWith<$Res> {
  factory _$$PermanantAddressChangedImplCopyWith(
          _$PermanantAddressChangedImpl value,
          $Res Function(_$PermanantAddressChangedImpl) then) =
      __$$PermanantAddressChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String permAddress});
}

/// @nodoc
class __$$PermanantAddressChangedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$PermanantAddressChangedImpl>
    implements _$$PermanantAddressChangedImplCopyWith<$Res> {
  __$$PermanantAddressChangedImplCopyWithImpl(
      _$PermanantAddressChangedImpl _value,
      $Res Function(_$PermanantAddressChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permAddress = null,
  }) {
    return _then(_$PermanantAddressChangedImpl(
      null == permAddress
          ? _value.permAddress
          : permAddress // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PermanantAddressChangedImpl implements _PermanantAddressChanged {
  const _$PermanantAddressChangedImpl(this.permAddress);

  @override
  final String permAddress;

  @override
  String toString() {
    return 'UploadDocEvent.permanantAddressChanged(permAddress: $permAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermanantAddressChangedImpl &&
            (identical(other.permAddress, permAddress) ||
                other.permAddress == permAddress));
  }

  @override
  int get hashCode => Object.hash(runtimeType, permAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermanantAddressChangedImplCopyWith<_$PermanantAddressChangedImpl>
      get copyWith => __$$PermanantAddressChangedImplCopyWithImpl<
          _$PermanantAddressChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return permanantAddressChanged(permAddress);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return permanantAddressChanged?.call(permAddress);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (permanantAddressChanged != null) {
      return permanantAddressChanged(permAddress);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return permanantAddressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return permanantAddressChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (permanantAddressChanged != null) {
      return permanantAddressChanged(this);
    }
    return orElse();
  }
}

abstract class _PermanantAddressChanged implements UploadDocEvent {
  const factory _PermanantAddressChanged(final String permAddress) =
      _$PermanantAddressChangedImpl;

  String get permAddress;
  @JsonKey(ignore: true)
  _$$PermanantAddressChangedImplCopyWith<_$PermanantAddressChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FatherNameChangedImplCopyWith<$Res> {
  factory _$$FatherNameChangedImplCopyWith(_$FatherNameChangedImpl value,
          $Res Function(_$FatherNameChangedImpl) then) =
      __$$FatherNameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fatherName});
}

/// @nodoc
class __$$FatherNameChangedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$FatherNameChangedImpl>
    implements _$$FatherNameChangedImplCopyWith<$Res> {
  __$$FatherNameChangedImplCopyWithImpl(_$FatherNameChangedImpl _value,
      $Res Function(_$FatherNameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fatherName = null,
  }) {
    return _then(_$FatherNameChangedImpl(
      null == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FatherNameChangedImpl implements _FatherNameChanged {
  const _$FatherNameChangedImpl(this.fatherName);

  @override
  final String fatherName;

  @override
  String toString() {
    return 'UploadDocEvent.fatherNameChanged(fatherName: $fatherName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FatherNameChangedImpl &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fatherName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FatherNameChangedImplCopyWith<_$FatherNameChangedImpl> get copyWith =>
      __$$FatherNameChangedImplCopyWithImpl<_$FatherNameChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return fatherNameChanged(fatherName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return fatherNameChanged?.call(fatherName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (fatherNameChanged != null) {
      return fatherNameChanged(fatherName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return fatherNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return fatherNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (fatherNameChanged != null) {
      return fatherNameChanged(this);
    }
    return orElse();
  }
}

abstract class _FatherNameChanged implements UploadDocEvent {
  const factory _FatherNameChanged(final String fatherName) =
      _$FatherNameChangedImpl;

  String get fatherName;
  @JsonKey(ignore: true)
  _$$FatherNameChangedImplCopyWith<_$FatherNameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DOBChangedImplCopyWith<$Res> {
  factory _$$DOBChangedImplCopyWith(
          _$DOBChangedImpl value, $Res Function(_$DOBChangedImpl) then) =
      __$$DOBChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String dob});
}

/// @nodoc
class __$$DOBChangedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$DOBChangedImpl>
    implements _$$DOBChangedImplCopyWith<$Res> {
  __$$DOBChangedImplCopyWithImpl(
      _$DOBChangedImpl _value, $Res Function(_$DOBChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dob = null,
  }) {
    return _then(_$DOBChangedImpl(
      null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DOBChangedImpl implements _DOBChanged {
  const _$DOBChangedImpl(this.dob);

  @override
  final String dob;

  @override
  String toString() {
    return 'UploadDocEvent.dobChanged(dob: $dob)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DOBChangedImpl &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DOBChangedImplCopyWith<_$DOBChangedImpl> get copyWith =>
      __$$DOBChangedImplCopyWithImpl<_$DOBChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return dobChanged(dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return dobChanged?.call(dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (dobChanged != null) {
      return dobChanged(dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return dobChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return dobChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (dobChanged != null) {
      return dobChanged(this);
    }
    return orElse();
  }
}

abstract class _DOBChanged implements UploadDocEvent {
  const factory _DOBChanged(final String dob) = _$DOBChangedImpl;

  String get dob;
  @JsonKey(ignore: true)
  _$$DOBChangedImplCopyWith<_$DOBChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadPersonalInfoImplCopyWith<$Res> {
  factory _$$UploadPersonalInfoImplCopyWith(_$UploadPersonalInfoImpl value,
          $Res Function(_$UploadPersonalInfoImpl) then) =
      __$$UploadPersonalInfoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadPersonalInfoImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$UploadPersonalInfoImpl>
    implements _$$UploadPersonalInfoImplCopyWith<$Res> {
  __$$UploadPersonalInfoImplCopyWithImpl(_$UploadPersonalInfoImpl _value,
      $Res Function(_$UploadPersonalInfoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadPersonalInfoImpl implements _UploadPersonalInfo {
  const _$UploadPersonalInfoImpl();

  @override
  String toString() {
    return 'UploadDocEvent.uploadPersonalInfo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadPersonalInfoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return uploadPersonalInfo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return uploadPersonalInfo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (uploadPersonalInfo != null) {
      return uploadPersonalInfo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return uploadPersonalInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return uploadPersonalInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (uploadPersonalInfo != null) {
      return uploadPersonalInfo(this);
    }
    return orElse();
  }
}

abstract class _UploadPersonalInfo implements UploadDocEvent {
  const factory _UploadPersonalInfo() = _$UploadPersonalInfoImpl;
}

/// @nodoc
abstract class _$$PPSizePhotoChangedImplCopyWith<$Res> {
  factory _$$PPSizePhotoChangedImplCopyWith(_$PPSizePhotoChangedImpl value,
          $Res Function(_$PPSizePhotoChangedImpl) then) =
      __$$PPSizePhotoChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic photo});
}

/// @nodoc
class __$$PPSizePhotoChangedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$PPSizePhotoChangedImpl>
    implements _$$PPSizePhotoChangedImplCopyWith<$Res> {
  __$$PPSizePhotoChangedImplCopyWithImpl(_$PPSizePhotoChangedImpl _value,
      $Res Function(_$PPSizePhotoChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_$PPSizePhotoChangedImpl(
      freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PPSizePhotoChangedImpl implements _PPSizePhotoChanged {
  const _$PPSizePhotoChangedImpl(this.photo);

  @override
  final dynamic photo;

  @override
  String toString() {
    return 'UploadDocEvent.ppSizePhotoChanged(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PPSizePhotoChangedImpl &&
            const DeepCollectionEquality().equals(other.photo, photo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PPSizePhotoChangedImplCopyWith<_$PPSizePhotoChangedImpl> get copyWith =>
      __$$PPSizePhotoChangedImplCopyWithImpl<_$PPSizePhotoChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return ppSizePhotoChanged(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return ppSizePhotoChanged?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (ppSizePhotoChanged != null) {
      return ppSizePhotoChanged(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return ppSizePhotoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return ppSizePhotoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (ppSizePhotoChanged != null) {
      return ppSizePhotoChanged(this);
    }
    return orElse();
  }
}

abstract class _PPSizePhotoChanged implements UploadDocEvent {
  const factory _PPSizePhotoChanged(final dynamic photo) =
      _$PPSizePhotoChangedImpl;

  dynamic get photo;
  @JsonKey(ignore: true)
  _$$PPSizePhotoChangedImplCopyWith<_$PPSizePhotoChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FullSizePhotoChangedImplCopyWith<$Res> {
  factory _$$FullSizePhotoChangedImplCopyWith(_$FullSizePhotoChangedImpl value,
          $Res Function(_$FullSizePhotoChangedImpl) then) =
      __$$FullSizePhotoChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic photo});
}

/// @nodoc
class __$$FullSizePhotoChangedImplCopyWithImpl<$Res>
    extends _$UploadDocEventCopyWithImpl<$Res, _$FullSizePhotoChangedImpl>
    implements _$$FullSizePhotoChangedImplCopyWith<$Res> {
  __$$FullSizePhotoChangedImplCopyWithImpl(_$FullSizePhotoChangedImpl _value,
      $Res Function(_$FullSizePhotoChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = freezed,
  }) {
    return _then(_$FullSizePhotoChangedImpl(
      freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FullSizePhotoChangedImpl implements _FullSizePhotoChanged {
  const _$FullSizePhotoChangedImpl(this.photo);

  @override
  final dynamic photo;

  @override
  String toString() {
    return 'UploadDocEvent.fullSizePhotoChanged(photo: $photo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullSizePhotoChangedImpl &&
            const DeepCollectionEquality().equals(other.photo, photo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(photo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FullSizePhotoChangedImplCopyWith<_$FullSizePhotoChangedImpl>
      get copyWith =>
          __$$FullSizePhotoChangedImplCopyWithImpl<_$FullSizePhotoChangedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() goToNextStep,
    required TResult Function(String fullName) fullNameChanged,
    required TResult Function(String tempAddress) temporaryAddressChanged,
    required TResult Function(String permAddress) permanantAddressChanged,
    required TResult Function(String fatherName) fatherNameChanged,
    required TResult Function(String dob) dobChanged,
    required TResult Function() uploadPersonalInfo,
    required TResult Function(dynamic photo) ppSizePhotoChanged,
    required TResult Function(dynamic photo) fullSizePhotoChanged,
  }) {
    return fullSizePhotoChanged(photo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? goToNextStep,
    TResult? Function(String fullName)? fullNameChanged,
    TResult? Function(String tempAddress)? temporaryAddressChanged,
    TResult? Function(String permAddress)? permanantAddressChanged,
    TResult? Function(String fatherName)? fatherNameChanged,
    TResult? Function(String dob)? dobChanged,
    TResult? Function()? uploadPersonalInfo,
    TResult? Function(dynamic photo)? ppSizePhotoChanged,
    TResult? Function(dynamic photo)? fullSizePhotoChanged,
  }) {
    return fullSizePhotoChanged?.call(photo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? goToNextStep,
    TResult Function(String fullName)? fullNameChanged,
    TResult Function(String tempAddress)? temporaryAddressChanged,
    TResult Function(String permAddress)? permanantAddressChanged,
    TResult Function(String fatherName)? fatherNameChanged,
    TResult Function(String dob)? dobChanged,
    TResult Function()? uploadPersonalInfo,
    TResult Function(dynamic photo)? ppSizePhotoChanged,
    TResult Function(dynamic photo)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (fullSizePhotoChanged != null) {
      return fullSizePhotoChanged(photo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GoToNextStep value) goToNextStep,
    required TResult Function(_FullNameChanged value) fullNameChanged,
    required TResult Function(_TemporaryAddressChanged value)
        temporaryAddressChanged,
    required TResult Function(_PermanantAddressChanged value)
        permanantAddressChanged,
    required TResult Function(_FatherNameChanged value) fatherNameChanged,
    required TResult Function(_DOBChanged value) dobChanged,
    required TResult Function(_UploadPersonalInfo value) uploadPersonalInfo,
    required TResult Function(_PPSizePhotoChanged value) ppSizePhotoChanged,
    required TResult Function(_FullSizePhotoChanged value) fullSizePhotoChanged,
  }) {
    return fullSizePhotoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GoToNextStep value)? goToNextStep,
    TResult? Function(_FullNameChanged value)? fullNameChanged,
    TResult? Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult? Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult? Function(_FatherNameChanged value)? fatherNameChanged,
    TResult? Function(_DOBChanged value)? dobChanged,
    TResult? Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult? Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult? Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
  }) {
    return fullSizePhotoChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GoToNextStep value)? goToNextStep,
    TResult Function(_FullNameChanged value)? fullNameChanged,
    TResult Function(_TemporaryAddressChanged value)? temporaryAddressChanged,
    TResult Function(_PermanantAddressChanged value)? permanantAddressChanged,
    TResult Function(_FatherNameChanged value)? fatherNameChanged,
    TResult Function(_DOBChanged value)? dobChanged,
    TResult Function(_UploadPersonalInfo value)? uploadPersonalInfo,
    TResult Function(_PPSizePhotoChanged value)? ppSizePhotoChanged,
    TResult Function(_FullSizePhotoChanged value)? fullSizePhotoChanged,
    required TResult orElse(),
  }) {
    if (fullSizePhotoChanged != null) {
      return fullSizePhotoChanged(this);
    }
    return orElse();
  }
}

abstract class _FullSizePhotoChanged implements UploadDocEvent {
  const factory _FullSizePhotoChanged(final dynamic photo) =
      _$FullSizePhotoChangedImpl;

  dynamic get photo;
  @JsonKey(ignore: true)
  _$$FullSizePhotoChangedImplCopyWith<_$FullSizePhotoChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UploadDocState {
  int get step => throw _privateConstructorUsedError;
  UploadStatus get uploadStatus =>
      throw _privateConstructorUsedError; // Personal Information Form contents
  GlobalKey<FormState> get personalInfoFormKey =>
      throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get permanantAddress => throw _privateConstructorUsedError;
  String? get temporaryAddress => throw _privateConstructorUsedError;
  String? get fatherName => throw _privateConstructorUsedError;
  String? get birthDate => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError; //Photo upload states
  File? get ppSizePhoto => throw _privateConstructorUsedError;
  File? get fullSizePhoto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadDocStateCopyWith<UploadDocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocStateCopyWith<$Res> {
  factory $UploadDocStateCopyWith(
          UploadDocState value, $Res Function(UploadDocState) then) =
      _$UploadDocStateCopyWithImpl<$Res, UploadDocState>;
  @useResult
  $Res call(
      {int step,
      UploadStatus uploadStatus,
      GlobalKey<FormState> personalInfoFormKey,
      String? fullName,
      String? permanantAddress,
      String? temporaryAddress,
      String? fatherName,
      String? birthDate,
      double height,
      double weight,
      File? ppSizePhoto,
      File? fullSizePhoto});
}

/// @nodoc
class _$UploadDocStateCopyWithImpl<$Res, $Val extends UploadDocState>
    implements $UploadDocStateCopyWith<$Res> {
  _$UploadDocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? uploadStatus = null,
    Object? personalInfoFormKey = null,
    Object? fullName = freezed,
    Object? permanantAddress = freezed,
    Object? temporaryAddress = freezed,
    Object? fatherName = freezed,
    Object? birthDate = freezed,
    Object? height = null,
    Object? weight = null,
    Object? ppSizePhoto = freezed,
    Object? fullSizePhoto = freezed,
  }) {
    return _then(_value.copyWith(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      uploadStatus: null == uploadStatus
          ? _value.uploadStatus
          : uploadStatus // ignore: cast_nullable_to_non_nullable
              as UploadStatus,
      personalInfoFormKey: null == personalInfoFormKey
          ? _value.personalInfoFormKey
          : personalInfoFormKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      permanantAddress: freezed == permanantAddress
          ? _value.permanantAddress
          : permanantAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      temporaryAddress: freezed == temporaryAddress
          ? _value.temporaryAddress
          : temporaryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      ppSizePhoto: freezed == ppSizePhoto
          ? _value.ppSizePhoto
          : ppSizePhoto // ignore: cast_nullable_to_non_nullable
              as File?,
      fullSizePhoto: freezed == fullSizePhoto
          ? _value.fullSizePhoto
          : fullSizePhoto // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadDocStateImplCopyWith<$Res>
    implements $UploadDocStateCopyWith<$Res> {
  factory _$$UploadDocStateImplCopyWith(_$UploadDocStateImpl value,
          $Res Function(_$UploadDocStateImpl) then) =
      __$$UploadDocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int step,
      UploadStatus uploadStatus,
      GlobalKey<FormState> personalInfoFormKey,
      String? fullName,
      String? permanantAddress,
      String? temporaryAddress,
      String? fatherName,
      String? birthDate,
      double height,
      double weight,
      File? ppSizePhoto,
      File? fullSizePhoto});
}

/// @nodoc
class __$$UploadDocStateImplCopyWithImpl<$Res>
    extends _$UploadDocStateCopyWithImpl<$Res, _$UploadDocStateImpl>
    implements _$$UploadDocStateImplCopyWith<$Res> {
  __$$UploadDocStateImplCopyWithImpl(
      _$UploadDocStateImpl _value, $Res Function(_$UploadDocStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? uploadStatus = null,
    Object? personalInfoFormKey = null,
    Object? fullName = freezed,
    Object? permanantAddress = freezed,
    Object? temporaryAddress = freezed,
    Object? fatherName = freezed,
    Object? birthDate = freezed,
    Object? height = null,
    Object? weight = null,
    Object? ppSizePhoto = freezed,
    Object? fullSizePhoto = freezed,
  }) {
    return _then(_$UploadDocStateImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      uploadStatus: null == uploadStatus
          ? _value.uploadStatus
          : uploadStatus // ignore: cast_nullable_to_non_nullable
              as UploadStatus,
      personalInfoFormKey: null == personalInfoFormKey
          ? _value.personalInfoFormKey
          : personalInfoFormKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      permanantAddress: freezed == permanantAddress
          ? _value.permanantAddress
          : permanantAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      temporaryAddress: freezed == temporaryAddress
          ? _value.temporaryAddress
          : temporaryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      fatherName: freezed == fatherName
          ? _value.fatherName
          : fatherName // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String?,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      ppSizePhoto: freezed == ppSizePhoto
          ? _value.ppSizePhoto
          : ppSizePhoto // ignore: cast_nullable_to_non_nullable
              as File?,
      fullSizePhoto: freezed == fullSizePhoto
          ? _value.fullSizePhoto
          : fullSizePhoto // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UploadDocStateImpl implements _UploadDocState {
  const _$UploadDocStateImpl(
      {this.step = 1,
      this.uploadStatus = UploadStatus.initial,
      required this.personalInfoFormKey,
      this.fullName,
      this.permanantAddress,
      this.temporaryAddress,
      this.fatherName,
      this.birthDate,
      this.height = 5.6,
      this.weight = 69.0,
      this.ppSizePhoto,
      this.fullSizePhoto});

  @override
  @JsonKey()
  final int step;
  @override
  @JsonKey()
  final UploadStatus uploadStatus;
// Personal Information Form contents
  @override
  final GlobalKey<FormState> personalInfoFormKey;
  @override
  final String? fullName;
  @override
  final String? permanantAddress;
  @override
  final String? temporaryAddress;
  @override
  final String? fatherName;
  @override
  final String? birthDate;
  @override
  @JsonKey()
  final double height;
  @override
  @JsonKey()
  final double weight;
//Photo upload states
  @override
  final File? ppSizePhoto;
  @override
  final File? fullSizePhoto;

  @override
  String toString() {
    return 'UploadDocState(step: $step, uploadStatus: $uploadStatus, personalInfoFormKey: $personalInfoFormKey, fullName: $fullName, permanantAddress: $permanantAddress, temporaryAddress: $temporaryAddress, fatherName: $fatherName, birthDate: $birthDate, height: $height, weight: $weight, ppSizePhoto: $ppSizePhoto, fullSizePhoto: $fullSizePhoto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadDocStateImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.uploadStatus, uploadStatus) ||
                other.uploadStatus == uploadStatus) &&
            (identical(other.personalInfoFormKey, personalInfoFormKey) ||
                other.personalInfoFormKey == personalInfoFormKey) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.permanantAddress, permanantAddress) ||
                other.permanantAddress == permanantAddress) &&
            (identical(other.temporaryAddress, temporaryAddress) ||
                other.temporaryAddress == temporaryAddress) &&
            (identical(other.fatherName, fatherName) ||
                other.fatherName == fatherName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.ppSizePhoto, ppSizePhoto) ||
                other.ppSizePhoto == ppSizePhoto) &&
            (identical(other.fullSizePhoto, fullSizePhoto) ||
                other.fullSizePhoto == fullSizePhoto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      step,
      uploadStatus,
      personalInfoFormKey,
      fullName,
      permanantAddress,
      temporaryAddress,
      fatherName,
      birthDate,
      height,
      weight,
      ppSizePhoto,
      fullSizePhoto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadDocStateImplCopyWith<_$UploadDocStateImpl> get copyWith =>
      __$$UploadDocStateImplCopyWithImpl<_$UploadDocStateImpl>(
          this, _$identity);
}

abstract class _UploadDocState implements UploadDocState {
  const factory _UploadDocState(
      {final int step,
      final UploadStatus uploadStatus,
      required final GlobalKey<FormState> personalInfoFormKey,
      final String? fullName,
      final String? permanantAddress,
      final String? temporaryAddress,
      final String? fatherName,
      final String? birthDate,
      final double height,
      final double weight,
      final File? ppSizePhoto,
      final File? fullSizePhoto}) = _$UploadDocStateImpl;

  @override
  int get step;
  @override
  UploadStatus get uploadStatus;
  @override // Personal Information Form contents
  GlobalKey<FormState> get personalInfoFormKey;
  @override
  String? get fullName;
  @override
  String? get permanantAddress;
  @override
  String? get temporaryAddress;
  @override
  String? get fatherName;
  @override
  String? get birthDate;
  @override
  double get height;
  @override
  double get weight;
  @override //Photo upload states
  File? get ppSizePhoto;
  @override
  File? get fullSizePhoto;
  @override
  @JsonKey(ignore: true)
  _$$UploadDocStateImplCopyWith<_$UploadDocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
