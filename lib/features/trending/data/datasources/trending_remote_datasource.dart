import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:yes_watching_app/common/constants.dart';
import 'package:yes_watching_app/common/exception.dart';

import 'package:yes_watching_app/features/trending/data/models/trending_response_model.dart';

abstract class TrendingRemoteDatasource {
  Future<TrendingResponseModel> getTrendingAll();
}

class TrendingRemoteDatasourceImpl implements TrendingRemoteDatasource {
  final http.Client client;
  TrendingRemoteDatasourceImpl({
    required this.client,
  });
  @override
  Future<TrendingResponseModel> getTrendingAll() async {
    final response =
        await client.get(Uri.parse('$BASE_URL/trending/all/day?$API_KEY'));
    if (response.statusCode == 200) {
      return TrendingResponseModel.fromJson(json.decode(response.body));
    } else {
      throw ServerException();
    }
  }
}
