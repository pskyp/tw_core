// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'portfolio_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PortfolioEventTearOff {
  const _$PortfolioEventTearOff();

  DocsStreamUpdated docsStreamUpdated(List<TWDocument> dcos) {
    return DocsStreamUpdated(
      dcos,
    );
  }

  UploadDocPressed uploadDocPressed(TWDocument doc) {
    return UploadDocPressed(
      doc,
    );
  }
}

/// @nodoc
const $PortfolioEvent = _$PortfolioEventTearOff();

/// @nodoc
mixin _$PortfolioEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TWDocument> dcos) docsStreamUpdated,
    required TResult Function(TWDocument doc) uploadDocPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TWDocument> dcos)? docsStreamUpdated,
    TResult Function(TWDocument doc)? uploadDocPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocsStreamUpdated value) docsStreamUpdated,
    required TResult Function(UploadDocPressed value) uploadDocPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocsStreamUpdated value)? docsStreamUpdated,
    TResult Function(UploadDocPressed value)? uploadDocPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioEventCopyWith<$Res> {
  factory $PortfolioEventCopyWith(
          PortfolioEvent value, $Res Function(PortfolioEvent) then) =
      _$PortfolioEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PortfolioEventCopyWithImpl<$Res>
    implements $PortfolioEventCopyWith<$Res> {
  _$PortfolioEventCopyWithImpl(this._value, this._then);

  final PortfolioEvent _value;
  // ignore: unused_field
  final $Res Function(PortfolioEvent) _then;
}

/// @nodoc
abstract class $DocsStreamUpdatedCopyWith<$Res> {
  factory $DocsStreamUpdatedCopyWith(
          DocsStreamUpdated value, $Res Function(DocsStreamUpdated) then) =
      _$DocsStreamUpdatedCopyWithImpl<$Res>;
  $Res call({List<TWDocument> dcos});
}

/// @nodoc
class _$DocsStreamUpdatedCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res>
    implements $DocsStreamUpdatedCopyWith<$Res> {
  _$DocsStreamUpdatedCopyWithImpl(
      DocsStreamUpdated _value, $Res Function(DocsStreamUpdated) _then)
      : super(_value, (v) => _then(v as DocsStreamUpdated));

  @override
  DocsStreamUpdated get _value => super._value as DocsStreamUpdated;

  @override
  $Res call({
    Object? dcos = freezed,
  }) {
    return _then(DocsStreamUpdated(
      dcos == freezed
          ? _value.dcos
          : dcos // ignore: cast_nullable_to_non_nullable
              as List<TWDocument>,
    ));
  }
}

/// @nodoc

class _$DocsStreamUpdated implements DocsStreamUpdated {
  _$DocsStreamUpdated(this.dcos);

  @override
  final List<TWDocument> dcos;

  @override
  String toString() {
    return 'PortfolioEvent.docsStreamUpdated(dcos: $dcos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DocsStreamUpdated &&
            (identical(other.dcos, dcos) ||
                const DeepCollectionEquality().equals(other.dcos, dcos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dcos);

  @JsonKey(ignore: true)
  @override
  $DocsStreamUpdatedCopyWith<DocsStreamUpdated> get copyWith =>
      _$DocsStreamUpdatedCopyWithImpl<DocsStreamUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TWDocument> dcos) docsStreamUpdated,
    required TResult Function(TWDocument doc) uploadDocPressed,
  }) {
    return docsStreamUpdated(dcos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TWDocument> dcos)? docsStreamUpdated,
    TResult Function(TWDocument doc)? uploadDocPressed,
    required TResult orElse(),
  }) {
    if (docsStreamUpdated != null) {
      return docsStreamUpdated(dcos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocsStreamUpdated value) docsStreamUpdated,
    required TResult Function(UploadDocPressed value) uploadDocPressed,
  }) {
    return docsStreamUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocsStreamUpdated value)? docsStreamUpdated,
    TResult Function(UploadDocPressed value)? uploadDocPressed,
    required TResult orElse(),
  }) {
    if (docsStreamUpdated != null) {
      return docsStreamUpdated(this);
    }
    return orElse();
  }
}

abstract class DocsStreamUpdated implements PortfolioEvent {
  factory DocsStreamUpdated(List<TWDocument> dcos) = _$DocsStreamUpdated;

  List<TWDocument> get dcos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocsStreamUpdatedCopyWith<DocsStreamUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadDocPressedCopyWith<$Res> {
  factory $UploadDocPressedCopyWith(
          UploadDocPressed value, $Res Function(UploadDocPressed) then) =
      _$UploadDocPressedCopyWithImpl<$Res>;
  $Res call({TWDocument doc});

  $TWDocumentCopyWith<$Res> get doc;
}

/// @nodoc
class _$UploadDocPressedCopyWithImpl<$Res>
    extends _$PortfolioEventCopyWithImpl<$Res>
    implements $UploadDocPressedCopyWith<$Res> {
  _$UploadDocPressedCopyWithImpl(
      UploadDocPressed _value, $Res Function(UploadDocPressed) _then)
      : super(_value, (v) => _then(v as UploadDocPressed));

  @override
  UploadDocPressed get _value => super._value as UploadDocPressed;

  @override
  $Res call({
    Object? doc = freezed,
  }) {
    return _then(UploadDocPressed(
      doc == freezed
          ? _value.doc
          : doc // ignore: cast_nullable_to_non_nullable
              as TWDocument,
    ));
  }

  @override
  $TWDocumentCopyWith<$Res> get doc {
    return $TWDocumentCopyWith<$Res>(_value.doc, (value) {
      return _then(_value.copyWith(doc: value));
    });
  }
}

/// @nodoc

class _$UploadDocPressed implements UploadDocPressed {
  _$UploadDocPressed(this.doc);

  @override
  final TWDocument doc;

  @override
  String toString() {
    return 'PortfolioEvent.uploadDocPressed(doc: $doc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UploadDocPressed &&
            (identical(other.doc, doc) ||
                const DeepCollectionEquality().equals(other.doc, doc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(doc);

  @JsonKey(ignore: true)
  @override
  $UploadDocPressedCopyWith<UploadDocPressed> get copyWith =>
      _$UploadDocPressedCopyWithImpl<UploadDocPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TWDocument> dcos) docsStreamUpdated,
    required TResult Function(TWDocument doc) uploadDocPressed,
  }) {
    return uploadDocPressed(doc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TWDocument> dcos)? docsStreamUpdated,
    TResult Function(TWDocument doc)? uploadDocPressed,
    required TResult orElse(),
  }) {
    if (uploadDocPressed != null) {
      return uploadDocPressed(doc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DocsStreamUpdated value) docsStreamUpdated,
    required TResult Function(UploadDocPressed value) uploadDocPressed,
  }) {
    return uploadDocPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DocsStreamUpdated value)? docsStreamUpdated,
    TResult Function(UploadDocPressed value)? uploadDocPressed,
    required TResult orElse(),
  }) {
    if (uploadDocPressed != null) {
      return uploadDocPressed(this);
    }
    return orElse();
  }
}

abstract class UploadDocPressed implements PortfolioEvent {
  factory UploadDocPressed(TWDocument doc) = _$UploadDocPressed;

  TWDocument get doc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadDocPressedCopyWith<UploadDocPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PortfolioStateTearOff {
  const _$PortfolioStateTearOff();

  _PortfolioState call(
      {required Option<List<TWDocument>> portfolioDocsOption,
      required bool uploading,
      required Option<Either<ServerError, Unit>> uploadResultOption}) {
    return _PortfolioState(
      portfolioDocsOption: portfolioDocsOption,
      uploading: uploading,
      uploadResultOption: uploadResultOption,
    );
  }
}

/// @nodoc
const $PortfolioState = _$PortfolioStateTearOff();

/// @nodoc
mixin _$PortfolioState {
  Option<List<TWDocument>> get portfolioDocsOption =>
      throw _privateConstructorUsedError;
  bool get uploading => throw _privateConstructorUsedError;
  Option<Either<ServerError, Unit>> get uploadResultOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PortfolioStateCopyWith<PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioStateCopyWith<$Res> {
  factory $PortfolioStateCopyWith(
          PortfolioState value, $Res Function(PortfolioState) then) =
      _$PortfolioStateCopyWithImpl<$Res>;
  $Res call(
      {Option<List<TWDocument>> portfolioDocsOption,
      bool uploading,
      Option<Either<ServerError, Unit>> uploadResultOption});
}

/// @nodoc
class _$PortfolioStateCopyWithImpl<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  _$PortfolioStateCopyWithImpl(this._value, this._then);

  final PortfolioState _value;
  // ignore: unused_field
  final $Res Function(PortfolioState) _then;

  @override
  $Res call({
    Object? portfolioDocsOption = freezed,
    Object? uploading = freezed,
    Object? uploadResultOption = freezed,
  }) {
    return _then(_value.copyWith(
      portfolioDocsOption: portfolioDocsOption == freezed
          ? _value.portfolioDocsOption
          : portfolioDocsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<TWDocument>>,
      uploading: uploading == freezed
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadResultOption: uploadResultOption == freezed
          ? _value.uploadResultOption
          : uploadResultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerError, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$PortfolioStateCopyWith<$Res>
    implements $PortfolioStateCopyWith<$Res> {
  factory _$PortfolioStateCopyWith(
          _PortfolioState value, $Res Function(_PortfolioState) then) =
      __$PortfolioStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<List<TWDocument>> portfolioDocsOption,
      bool uploading,
      Option<Either<ServerError, Unit>> uploadResultOption});
}

/// @nodoc
class __$PortfolioStateCopyWithImpl<$Res>
    extends _$PortfolioStateCopyWithImpl<$Res>
    implements _$PortfolioStateCopyWith<$Res> {
  __$PortfolioStateCopyWithImpl(
      _PortfolioState _value, $Res Function(_PortfolioState) _then)
      : super(_value, (v) => _then(v as _PortfolioState));

  @override
  _PortfolioState get _value => super._value as _PortfolioState;

  @override
  $Res call({
    Object? portfolioDocsOption = freezed,
    Object? uploading = freezed,
    Object? uploadResultOption = freezed,
  }) {
    return _then(_PortfolioState(
      portfolioDocsOption: portfolioDocsOption == freezed
          ? _value.portfolioDocsOption
          : portfolioDocsOption // ignore: cast_nullable_to_non_nullable
              as Option<List<TWDocument>>,
      uploading: uploading == freezed
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploadResultOption: uploadResultOption == freezed
          ? _value.uploadResultOption
          : uploadResultOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ServerError, Unit>>,
    ));
  }
}

/// @nodoc

class _$_PortfolioState implements _PortfolioState {
  _$_PortfolioState(
      {required this.portfolioDocsOption,
      required this.uploading,
      required this.uploadResultOption});

  @override
  final Option<List<TWDocument>> portfolioDocsOption;
  @override
  final bool uploading;
  @override
  final Option<Either<ServerError, Unit>> uploadResultOption;

  @override
  String toString() {
    return 'PortfolioState(portfolioDocsOption: $portfolioDocsOption, uploading: $uploading, uploadResultOption: $uploadResultOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PortfolioState &&
            (identical(other.portfolioDocsOption, portfolioDocsOption) ||
                const DeepCollectionEquality()
                    .equals(other.portfolioDocsOption, portfolioDocsOption)) &&
            (identical(other.uploading, uploading) ||
                const DeepCollectionEquality()
                    .equals(other.uploading, uploading)) &&
            (identical(other.uploadResultOption, uploadResultOption) ||
                const DeepCollectionEquality()
                    .equals(other.uploadResultOption, uploadResultOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(portfolioDocsOption) ^
      const DeepCollectionEquality().hash(uploading) ^
      const DeepCollectionEquality().hash(uploadResultOption);

  @JsonKey(ignore: true)
  @override
  _$PortfolioStateCopyWith<_PortfolioState> get copyWith =>
      __$PortfolioStateCopyWithImpl<_PortfolioState>(this, _$identity);
}

abstract class _PortfolioState implements PortfolioState {
  factory _PortfolioState(
          {required Option<List<TWDocument>> portfolioDocsOption,
          required bool uploading,
          required Option<Either<ServerError, Unit>> uploadResultOption}) =
      _$_PortfolioState;

  @override
  Option<List<TWDocument>> get portfolioDocsOption =>
      throw _privateConstructorUsedError;
  @override
  bool get uploading => throw _privateConstructorUsedError;
  @override
  Option<Either<ServerError, Unit>> get uploadResultOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PortfolioStateCopyWith<_PortfolioState> get copyWith =>
      throw _privateConstructorUsedError;
}
