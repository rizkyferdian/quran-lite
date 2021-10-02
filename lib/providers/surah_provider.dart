import 'dart:convert';

import 'package:baca_quran/models/surah_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class SurahProvider with ChangeNotifier {
  Future<List<Surah>> fetchSurah() async {
    final response =
        await http.get(Uri.parse('http://api.alquran.cloud/v1/surah'));
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body) as Map<String, dynamic>;
      List<dynamic> listSurah = jsonResponse['data'];
      List<Surah> surah = [];
      listSurah.forEach((element) {
        surah.add(Surah.fromJson(element));
      });
      return surah;
    } else {
      return [];
    }
  }
}
