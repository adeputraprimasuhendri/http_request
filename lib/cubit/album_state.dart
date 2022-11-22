part of 'album_cubit.dart';

@immutable
abstract class AlbumState {}

class AlbumInitial extends AlbumState {}

class AlbumData extends AlbumState {
  final AlbumModel data;
  AlbumData(this.data);
}
