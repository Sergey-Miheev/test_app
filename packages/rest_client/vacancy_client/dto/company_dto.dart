import 'package:json_annotation/json_annotation.dart';

part 'company_dto.g.dart';

@JsonSerializable()
class CompanyDto {
  CompanyDto({required this.name});

  factory CompanyDto.fromJson(Map<String, Object?> json) => _$CompanyDtoFromJson(json);

  final String name;

  Map<String, Object?> toJson() => _$CompanyDtoToJson(this);
}
