import 'package:flutter/material.dart';
import 'package:flutter_start/form_success_page.dart';
import 'package:flutter_start/provider/album_provider.dart';
import 'package:provider/provider.dart';
import './view/album_provider_view.dart';

void main() {
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AlbumProvider()),
        ],
        child: MyApp(),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/success': (context) => SuccessPage()
      },
      // home: const MyHomePage(),
    );
  }
}
