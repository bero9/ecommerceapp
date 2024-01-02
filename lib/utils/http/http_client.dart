import 'dart:convert';

import 'package:http/http.dart' as http;

class THttpHelper {
  static const String _baseUrl = 'http://your-api-base-url.com';

  static Future<Map<String, dynamic>> get(String endpoint) async {
    final respose = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(respose);
  }

  static Future<Map<String, dynamic>> post(String endpoint,
      dynamic data) async {
    final respose = await http.post(Uri.parse('$_baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
        );
    return _handleResponse(respose);
  }
  static Future<Map<String, dynamic>> put(String endpoint,
      dynamic data) async {
    final respose = await http.put(
        Uri.parse('$_baseUrl/$endpoint'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(data),
    );
    return _handleResponse(respose);
  }
  static Future<Map<String, dynamic>> delete(String endpoint,
      ) async {
    final respose = await http.delete(
      Uri.parse('$_baseUrl/$endpoint'),
    );
    return _handleResponse(respose);
  }
  static Future<Map<String, dynamic>> _handleResponse(http.Response response){
    if(response.statusCode == 200){
      return json.decode(response.body);
    }else{
      throw Exception('Faild to load data : ${response.statusCode}');
    }
  }

  }

