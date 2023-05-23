import 'package:http/http.dart' as http;
import 'dart:convert';

Future<List<dynamic>> fetchUsers() async {
  final url = 'https://api.example.com/users'; // Replace with your API URL
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    return jsonData['users'];
  } else {
    throw Exception('Failed to fetch users');
  }
}
