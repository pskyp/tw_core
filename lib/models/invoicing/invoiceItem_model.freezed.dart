// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'invoiceItem_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) {
  return _InvoiceItem.fromJson(json);
}

/// @nodoc
class _$InvoiceItemTearOff {
  const _$InvoiceItemTearOff();

  _InvoiceItem call(
      {required String itemName,
      required String description,
      required double qty,
      required double unitPrice,
      required double taxRate,
      required String? receiptPhotoId,
      required DateTime date}) {
    return _InvoiceItem(
      itemName: itemName,
      description: description,
      qty: qty,
      unitPrice: unitPrice,
      taxRate: taxRate,
      receiptPhotoId: receiptPhotoId,
      date: date,
    );
  }

  InvoiceItem fromJson(Map<String, Object?> json) {
    return InvoiceItem.fromJson(json);
  }
}

/// @nodoc
const $InvoiceItem = _$InvoiceItemTearOff();

/// @nodoc
mixin _$InvoiceItem {
  String get itemName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get qty => throw _privateConstructorUsedError;
  double get unitPrice => throw _privateConstructorUsedError;
  double get taxRate => throw _privateConstructorUsedError;
  String? get receiptPhotoId => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceItemCopyWith<InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceItemCopyWith<$Res> {
  factory $InvoiceItemCopyWith(
          InvoiceItem value, $Res Function(InvoiceItem) then) =
      _$InvoiceItemCopyWithImpl<$Res>;
  $Res call(
      {String itemName,
      String description,
      double qty,
      double unitPrice,
      double taxRate,
      String? receiptPhotoId,
      DateTime date});
}

/// @nodoc
class _$InvoiceItemCopyWithImpl<$Res> implements $InvoiceItemCopyWith<$Res> {
  _$InvoiceItemCopyWithImpl(this._value, this._then);

  final InvoiceItem _value;
  // ignore: unused_field
  final $Res Function(InvoiceItem) _then;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? description = freezed,
    Object? qty = freezed,
    Object? unitPrice = freezed,
    Object? taxRate = freezed,
    Object? receiptPhotoId = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      taxRate: taxRate == freezed
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double,
      receiptPhotoId: receiptPhotoId == freezed
          ? _value.receiptPhotoId
          : receiptPhotoId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$InvoiceItemCopyWith<$Res>
    implements $InvoiceItemCopyWith<$Res> {
  factory _$InvoiceItemCopyWith(
          _InvoiceItem value, $Res Function(_InvoiceItem) then) =
      __$InvoiceItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String itemName,
      String description,
      double qty,
      double unitPrice,
      double taxRate,
      String? receiptPhotoId,
      DateTime date});
}

/// @nodoc
class __$InvoiceItemCopyWithImpl<$Res> extends _$InvoiceItemCopyWithImpl<$Res>
    implements _$InvoiceItemCopyWith<$Res> {
  __$InvoiceItemCopyWithImpl(
      _InvoiceItem _value, $Res Function(_InvoiceItem) _then)
      : super(_value, (v) => _then(v as _InvoiceItem));

  @override
  _InvoiceItem get _value => super._value as _InvoiceItem;

  @override
  $Res call({
    Object? itemName = freezed,
    Object? description = freezed,
    Object? qty = freezed,
    Object? unitPrice = freezed,
    Object? taxRate = freezed,
    Object? receiptPhotoId = freezed,
    Object? date = freezed,
  }) {
    return _then(_InvoiceItem(
      itemName: itemName == freezed
          ? _value.itemName
          : itemName // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as double,
      taxRate: taxRate == freezed
          ? _value.taxRate
          : taxRate // ignore: cast_nullable_to_non_nullable
              as double,
      receiptPhotoId: receiptPhotoId == freezed
          ? _value.receiptPhotoId
          : receiptPhotoId // ignore: cast_nullable_to_non_nullable
              as String?,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InvoiceItem extends _InvoiceItem {
  const _$_InvoiceItem(
      {required this.itemName,
      required this.description,
      required this.qty,
      required this.unitPrice,
      required this.taxRate,
      required this.receiptPhotoId,
      required this.date})
      : super._();

  factory _$_InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$$_InvoiceItemFromJson(json);

  @override
  final String itemName;
  @override
  final String description;
  @override
  final double qty;
  @override
  final double unitPrice;
  @override
  final double taxRate;
  @override
  final String? receiptPhotoId;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'InvoiceItem(itemName: $itemName, description: $description, qty: $qty, unitPrice: $unitPrice, taxRate: $taxRate, receiptPhotoId: $receiptPhotoId, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InvoiceItem &&
            const DeepCollectionEquality().equals(other.itemName, itemName) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.qty, qty) &&
            const DeepCollectionEquality().equals(other.unitPrice, unitPrice) &&
            const DeepCollectionEquality().equals(other.taxRate, taxRate) &&
            const DeepCollectionEquality()
                .equals(other.receiptPhotoId, receiptPhotoId) &&
            const DeepCollectionEquality().equals(other.date, date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(itemName),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(qty),
      const DeepCollectionEquality().hash(unitPrice),
      const DeepCollectionEquality().hash(taxRate),
      const DeepCollectionEquality().hash(receiptPhotoId),
      const DeepCollectionEquality().hash(date));

  @JsonKey(ignore: true)
  @override
  _$InvoiceItemCopyWith<_InvoiceItem> get copyWith =>
      __$InvoiceItemCopyWithImpl<_InvoiceItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InvoiceItemToJson(this);
  }
}

abstract class _InvoiceItem extends InvoiceItem {
  const factory _InvoiceItem(
      {required String itemName,
      required String description,
      required double qty,
      required double unitPrice,
      required double taxRate,
      required String? receiptPhotoId,
      required DateTime date}) = _$_InvoiceItem;
  const _InvoiceItem._() : super._();

  factory _InvoiceItem.fromJson(Map<String, dynamic> json) =
      _$_InvoiceItem.fromJson;

  @override
  String get itemName;
  @override
  String get description;
  @override
  double get qty;
  @override
  double get unitPrice;
  @override
  double get taxRate;
  @override
  String? get receiptPhotoId;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$InvoiceItemCopyWith<_InvoiceItem> get copyWith =>
      throw _privateConstructorUsedError;
}
