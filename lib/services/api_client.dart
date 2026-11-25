import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:myportofolio_mobile/config.dart';
import 'package:myportofolio_mobile/models/award.dart';

/// Exception thrown when an API request returns a non-2xx status code.
class ApiException implements Exception {
  const ApiException(this.statusCode, this.message);

  final int statusCode;
  final String message;

  @override
  String toString() => 'ApiException($statusCode): $message';
}

/// HTTP client for the MyPortfolio Django REST Framework backend.
class ApiClient {
  ApiClient({http.Client? client, this.baseUrl = apiBaseUrl})
    : _client = client ?? http.Client();

  final http.Client _client;
  final String baseUrl;

  Uri _uri(String path) => Uri.parse('$baseUrl$path');

  Future<List<Award>> getAwards() async {
    final response = await _client.get(
      _uri('/api/v1/awards/'),
      headers: const {'Accept': 'application/json'},
    );
    _ensureSuccess(response);

    final decoded = jsonDecode(response.body) as List<dynamic>;
    return decoded
        .map((item) => Award.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<Award> createAward(Award award, {required String token}) async {
    // TODO: Send HTTP POST to /api/v1/projects/ with:
    // - headers: Accept, Content-Type (application/json; charset=UTF-8),
    //   and Authorization ('Token $token')
    // - body: jsonEncode(project.toJson())
    // Call _ensureSuccess(response), decode the JSON object, and return Project.fromJson(...)
    final response = await _client.post(
      _uri('/api/v1/awards/'),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Token $token',
      },
      body: jsonEncode(award.toJson()),
    );
    _ensureSuccess(response);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    return Award.fromJson(decoded);
  }

  Future<String> obtainToken(String username, String password) async {
    // TODO: Send HTTP POST to /api/v1/auth/token/ with JSON body
    // {'username': username, 'password': password}.
    // Call _ensureSuccess(response) and return decoded['token'] as String.
    final response = await _client.post(
      _uri('/api/v1/auth/token/'),
      headers: const {
        'Accept': 'application/json',
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({'username': username, 'password': password}),
    );
    _ensureSuccess(response);

    final decoded = jsonDecode(response.body) as Map<String, dynamic>;
    return decoded['token'] as String;
  }

  Future<void> logout({required String token}) async {
    // TODO: Send HTTP POST to /api/v1/auth/logout/ with Authorization: 'Token $token'
    // and call _ensureSuccess(response).
    final response = await _client.post(
      _uri('/api/v1/auth/logout/'),
      headers: {'Accept': 'application/json', 'Authorization': 'Token $token'},
    );
    _ensureSuccess(response);
  }

  void _ensureSuccess(http.Response response) {
    if (response.statusCode >= 200 && response.statusCode < 300) {
      return;
    }
    throw ApiException(response.statusCode, response.body);
  }
}
