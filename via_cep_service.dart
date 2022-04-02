import 'package:consumindo_api_com_flutter/resultado.dart';
import 'package:http/http.dart' as http;
import 'dart:collection';
import 'package:search_cep/search_cep.dart';

class ViaCepService {
  static Future<ResultCep> fetchCep({String? cep}) async {
    final String url1 = 'https://viacep.com.br/ws/$cep/json';
    final response = await http.get(Uri.parse(url1));
    if (response.statusCode == 200) {
      return ResultCep.fromJson(response.body);
    } else {
      throw Exception('Requisição inválida!');
    }
  }
}