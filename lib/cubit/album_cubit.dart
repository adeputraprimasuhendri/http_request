import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../http_request/album_request.dart';
import '../model/album_model.dart';

part 'album_state.dart';

class AlbumCubit extends Cubit<AlbumState> {
  AlbumCubit() : super(AlbumInitial());

  final AlbumRequest requestController = AlbumRequest();
  AlbumModel albumModel = AlbumModel();

  loadAlbum() async {
    albumModel = await requestController.fetchAlbum();
    emit(AlbumData(albumModel));
  }
}
