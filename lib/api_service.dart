import 'dart:convert';

import 'package:http/http.dart' as http;

import 'config.dart';
import 'models/data_model.dart';

class APIService {
  Future<DataModel> getData(pageNumber) async {
    //String url = "/GetRadios?pageSize=15&pageNumber=$pageNumber";
    String url = "?size=10&page=$pageNumber";
    print("URL : $url");
    final response = await http.get(Uri.parse(Config.apiURL + url));
    if (response.statusCode == 200) {
      print(response.body);
      return DataModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
