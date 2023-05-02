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

  static Future<Response> getTransactionHttp(
    String idToken, {
    required String accountNumber,
  }) async {
    final apiUrl =
        'http://localhost:8080/api/account/$accountNumber/transaction';

    return await http.get(
      Uri.parse(apiUrl),
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

  static Future<void> transferMethod(
      String idToken,
      String fromAccountNumber,
      String fromRoutingNumber,
      String toAccountNumber,
      String toRoutingNumber,
      double dollarAmount,
      String description) async {
    const endpoint = '/processTransfer';
    final response = await postHttp(
      idToken,
      endpoint: endpoint,
      requestBody: {
        "fromAccount": {
          "number": fromAccountNumber,
          "routingNumber": fromRoutingNumber,
        },
        "toAccount": {
          "number": toAccountNumber,
          "routingNumber": toRoutingNumber,
        },
        "amount": dollarAmount,
        "description": description,
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      // String content = responseBody['choices'][0]['message']['content'];
      logger.d('Content: $responseBody');
    } else {
      logger.d(jsonDecode(response.body));
      logger.e('Error: ${response.statusCode} ${response.reasonPhrase}');
      // throw exception
      throw Exception('Error: ${response.statusCode} ${response.reasonPhrase}');
    }
  }
}
