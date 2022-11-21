import 'dart:convert';

import 'package:flutter_http/album_model.dart';
import 'package:http/http.dart' as http;

class RequestController {
  Future<AlbumModel> fetchAlbum() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    return AlbumModel.fromJson(jsonDecode(response.body));
  }
}
