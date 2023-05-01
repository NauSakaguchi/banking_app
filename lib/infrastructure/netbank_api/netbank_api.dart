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
}
