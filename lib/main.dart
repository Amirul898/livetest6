import 'package:flutter/material.dart';

void main() {
  runApp(MyShoppingListApp());
}

class MyShoppingListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShoppingListPage(),
      debugShowCheckedModeBanner:  false,
    );
  }
}

class ShoppingListPage extends StatelessWidget {
  final List<String> shoppingItems = [
    'Apples',
    'Bananas',
    'Breads',
    'Milk',
    'Eggs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping List'),
        centerTitle:true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(Icons.shopping_basket),
            title: Text(shoppingItems[index]),
          );
        },
      ),
    );
  }
}
