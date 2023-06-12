import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
        title: Text('My Shopping List'),
        centerTitle: true,
      ),
      body: ShoppingItems(),
    );
  }
}

class ShoppingItems extends StatelessWidget {
  const ShoppingItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(

    );
  }
}

