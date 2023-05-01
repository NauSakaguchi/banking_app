import 'dart:convert';

import 'package:banking_app/main.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class NetBankApi {
  static Future<Response> getHttp(
    String idToken, {
    required String endpoint,
  }) async {
    const apiUrl = 'http://localhost:8080/api';

    return await http.get(
      Uri.parse(apiUrl + endpoint),
      headers: {
        'accept': '*/*',
        'Authorization': 'Bearer $idToken',
      },
    );
  }

  static Future<Response> postHttp(
    String idToken, {
    required String endpoint,
    required Map<String, dynamic> requestBody,
  }) async {
    const apiUrl = 'http://localhost:8080/api';

    logger.d(jsonEncode(requestBody));

    return await http.post(
      Uri.parse(apiUrl + endpoint),
      headers: {
        'accept': '*/*',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $idToken',
      },
      body: jsonEncode(requestBody),
    );
  }

  static Future<Response> deleteHttp(
    String idToken, {
    required String endpoint,
    required Map<String, dynamic> requestBody,
  }) async {
    const apiUrl = 'http://localhost:8080/api';

    logger.d(jsonEncode(requestBody));

    return await http.delete(
      Uri.parse(apiUrl + endpoint),
      headers: {
        'accept': '*/*',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $idToken',
      },
      body: jsonEncode(requestBody),
    );
  }
}
