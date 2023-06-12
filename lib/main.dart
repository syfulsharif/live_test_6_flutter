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

  mySnackbar(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {mySnackbar('Cart is empty', context);}, icon: Icon(Icons.shopping_cart)),
          
        ],
        title: Text('My Shopping List'),
        centerTitle: true,
      ),
      body: ShoppingItems(),
    );
  }
}

class ShoppingItems extends StatelessWidget {
  ShoppingItems({Key? key}) : super(key: key);
  List items = ["Apples", "Bananas", "Bread", "Milk", "Eggs"];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_bag),
            title: Text(items[index]),
          );
        },
      ),
    );
  }
}

