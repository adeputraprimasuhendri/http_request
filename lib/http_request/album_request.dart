import 'dart:convert';

import 'package:flutter_http/model/album_model.dart';
import 'package:http/http.dart' as http;

class AlbumRequest {
  Future<AlbumModel> fetchAlbum() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
    return AlbumModel.fromJson(jsonDecode(response.body));
  }
}
