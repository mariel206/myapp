import 'dart:convert';
import 'package:http/http.dart' as http;

class NewsService {
  final String _url =
      'https://gnews.io/api/v4/search?q=fashion&lang=es&token=bde0f27d9c933474dc3f2765b4de08db';

  Future<List<dynamic>> fetchNews() async {
    try {
      final response = await http.get(Uri.parse(_url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['articles'];
      } else {
        print('Error: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error al obtener noticias: $e');
      return [];
    }
  }
}
