import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:favourite_items_app/models/favorites.dart';
import 'package:favourite_items_app/screens/favorites.dart';
import 'package:favourite_items_app/screens/home.dart';

void main() {
  runApp(const TestingApp());
}

class TestingApp extends StatelessWidget {
  const TestingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (context) => Favorites(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          HomePage.routeName: (context) => const HomePage(),
          FavoritesPage.routeName: (context) => const FavoritesPage(), 
        },
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
