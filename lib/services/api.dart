import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:rick_monty/models/rick_morty.dart';

class Api {
  static const String _url = 'https://rickandmortyapi.com/api/character/';

  static Future<List<RickMortyModel>> getData() async {
    var url = Uri.parse(_url);
    http.Response response = await http.get(url);
    String data = response.body;
    var decodedData = jsonDecode(data);
    List<dynamic> datas = decodedData['results'];

    List<RickMortyModel> listData =
        datas.map((rickMorty) => RickMortyModel.fromMap(rickMorty)).toList();
    return listData;
  }
}
