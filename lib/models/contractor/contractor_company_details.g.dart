// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contractor_company_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContractorCompanyDetails _$$_ContractorCompanyDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_ContractorCompanyDetails(
      companyName: json['companyName'] as String,
      companyNumber: json['companyNumber'] as String,
      vatNumber: json['vatNumber'] as String,
      registeredAddress: LocationModel.fromJson(
          json['registeredAddress'] as Map<String, dynamic>),
      companyAddress: LocationModel.fromJson(
          json['companyAddress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContractorCompanyDetailsToJson(
        _$_ContractorCompanyDetails instance) =>
    <String, dynamic>{
      'companyName': instance.companyName,
      'companyNumber': instance.companyNumber,
      'vatNumber': instance.vatNumber,
      'registeredAddress': instance.registeredAddress.toJson(),
      'companyAddress': instance.companyAddress.toJson(),
    };
