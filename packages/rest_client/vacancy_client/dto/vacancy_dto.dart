import 'package:json_annotation/json_annotation.dart';

import 'company_dto.dart';

part 'vacancy_dto.g.dart';

@JsonSerializable()
class VacancyDto {
  VacancyDto({
    required this.id,
    required this.title,
    required this.salaryFrom,
    required this.salaryTo,
    required this.experienceYear,
    required this.experience,
    required this.employment,
    required this.schedule,
    // required this.addressList,
    required this.about,
    required this.humanizeCreatedAt,
    required this.isOurVacancy,
    required this.companyData,
  });

  factory VacancyDto.fromJson(Map<String, Object?> json) => _$VacancyDtoFromJson(json);

  final int id;
  final String title;
  final int salaryFrom;
  final int salaryTo;
  final int experienceYear;
  final String experience;
  final String employment;
  final String schedule;
  // final List<String> addressList;
  final String about;
  final String humanizeCreatedAt;
  final bool isOurVacancy;
  final CompanyDto companyData;

  Map<String, Object?> toJson() => _$VacancyDtoToJson(this);
}
