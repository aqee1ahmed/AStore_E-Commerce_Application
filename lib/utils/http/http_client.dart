import 'dart:convert';
import 'package:http/http.dart' as http;

class AStoreAppHttpHelper {
  AStoreAppHttpHelper._();

  static const String baseUrl = 'hhtps://api.example.com';

  ///helper function to handle the get response
  static Future<Map<String, dynamic>> get(String endPoint) async {
    final response = await http.get(Uri.parse('$baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  ///helper function to handle the post response
  static Future<Map<String, dynamic>> post(
      String endPoint, dynamic data) async {
    final response = await http.post(
      Uri.parse('$baseUrl/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  ///helper function to handle the put response
  static Future<Map<String, dynamic>> put(String endPoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$baseUrl/$endPoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  ///helper function to handle the delete response
  static Future<Map<String, dynamic>> delete(String endPoint) async {
    final response = await http.delete(Uri.parse('$baseUrl/$endPoint'));
    return _handleResponse(response);
  }

  ///helper function to handle the HTTP response
  static Map<String, dynamic> _handleResponse(http.Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
