import 'package:dio/dio.dart';

import 'vacancy_client/vacancy_client.dart';

final class RestClient {
  RestClient({
    required this.dio,
    required this.vacancyClient,
});

  final Dio dio;
  final VacancyClient vacancyClient;
}