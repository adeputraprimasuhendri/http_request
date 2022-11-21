import 'package:flutter/material.dart';
import 'package:flutter_http/request_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RequestController requestController = RequestController();

  loadAlbum() async {
    var a = await requestController.fetchAlbum();
    print(a);
  }

  @override
  void initState() {
    loadAlbum();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
