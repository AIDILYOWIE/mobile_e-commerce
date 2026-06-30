import 'package:http/http.dart' as http;

class HttpClient {
  static const String _baseUrl = 'https://api-base-url.com';

  // Helper method to make a GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }
}