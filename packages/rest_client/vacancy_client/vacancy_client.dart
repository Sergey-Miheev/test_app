import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import 'dto/vacancies_page_dto.dart';
import 'dto/vacancy_dto.dart';

part 'vacancy_client.g.dart';

@RestApi()
abstract class VacancyClient {
  factory VacancyClient(Dio dio, {String baseUrl}) = _VacancyClient;

  @GET('/v1/vacancies')
  Future<VacanciesPageDto> getVacanciesPage(/*{
    *//*@Query('page') required int page,
    @Query('limit') required int limit,
    @Query('where[tags.name][in]') List<String>? tagList,
    @Query('search') String? search,*//*
  }*/);

  @GET('/v1/vacancy-gderabota/{id}')
  Future<VacancyDto> getVacancyGdeRabotaById(
      @Path() String vacancyId,
      );

  @GET('/v1/vacancy-work-everyone/{id}')
  Future<VacancyDto> getVacancyWorkEveryoneById(
      @Path() String vacancyId,
      );
}
