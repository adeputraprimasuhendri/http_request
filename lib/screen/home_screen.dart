import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/album_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AlbumCubit albumCubit = AlbumCubit();

  @override
  void initState() {
    albumCubit.loadAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fetch data from internet"),
      ),
      body: BlocBuilder<AlbumCubit, AlbumState>(
        bloc: albumCubit,
        builder: (context, state) {
          return ListTile(
              title: Text("${albumCubit.albumModel.title}"),
              subtitle: Text("${albumCubit.albumModel.userId}"));
        },
      ),
    );
  }
}
