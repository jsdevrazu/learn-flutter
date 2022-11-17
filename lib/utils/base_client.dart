// ignore_for_file: unused_local_variable

import 'dart:convert';

import 'package:http/http.dart' as http;

const String baseUrl = 'https://jsonplaceholder.typicode.com';

class BaseClient {
  var client = http.Client();
  var token = "asasasasas";

  Future<dynamic> get(String api) async {
    try {
      // if header is exits
      // var _headers = {
      //   "Authorization": 'Bearer ${token}',
      //   "api_key" : '${token}'
      // };
      var url = Uri.parse(baseUrl + api);
      // if header is exits
      // var response = await client.get(url, headers: _headers);
      var response = await client.get(url);
      print(response.body);
      return response.body;
    } catch (e) {
      print("error logi ${e}");
    }
  }

  Future<dynamic> post(String api, dynamic object) async {
    try {
      var url = Uri.parse(baseUrl + api);
      var _payload = jsonEncode(object);
      var response = await client.post(url, body: _payload);
      print("post sucesfully ${response.body}");
      return response.body;
    } catch (e) {
      print("error logi ${e}");
    }
  }

  Future<dynamic> put(String api, dynamic object) async {
    try {
      var url = Uri.parse(baseUrl + api);
      var _payload = jsonEncode(object);
      var response = await client.put(url, body: _payload);
      print("put sucesfully ${response.body}");
      return response.body;
    } catch (e) {
      print("error logi ${e}");
    }
  }

  Future<dynamic> delete(String api) async {
    var _headers = {"Authorization": 'Bearer ${token}', "api_key": '${token}'};

    try {
      var url = Uri.parse(baseUrl + api);
      var response = await client.delete(url, headers: _headers);
      print("delete sucesfully ${response.body}");
      return response.body;
    } catch (e) {
      print("error logi ${e}");
    }
  }
}
