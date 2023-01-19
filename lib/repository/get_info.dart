import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:you_tube/model/search_model.dart';

abstract class SearchRepository {
  SearchRepository._();

  static Future<SearchRepositor?> getSearch({required String name}) async {
    try {
      final url = Uri.parse(
          'https://youtube138.p.rapidapi.com/search/?q=$name&hl=en&gl=US');
      final res = await http.get(url, headers: {
        'X-RapidAPI-Key': '668ec5f1b0msh32ae4a0abc77259p19ab46jsnea0ced6cf2fd',
        'X-RapidAPI-Host': 'youtube138.p.rapidapi.com'
      });
      return SearchRepositorFromJson(res.body);
    } catch (e) {
      print(e);
    }
    return null;
  }
}
