import 'package:json_annotation/json_annotation.dart';

import 'vacancy_dto.dart';

part 'vacancies_page_dto.g.dart';

@JsonSerializable()
class VacanciesPageDto {
  VacanciesPageDto({
    required this.currentPage,
    required this.lastPage,
    required this.data,
  });

  factory VacanciesPageDto.fromJson(Map<String, Object?> json) => _$VacanciesPageDtoFromJson(json);

  @JsonKey(name: 'current_page')
  final int currentPage;
  @JsonKey(name: 'last_page')
  final int lastPage;
  final List<VacancyDto> data;

  Map<String, Object?> toJson() => _$VacanciesPageDtoToJson(this);
}
