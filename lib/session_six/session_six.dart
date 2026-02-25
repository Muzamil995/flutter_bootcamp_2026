import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bootcamp_two/session_six/product.dart';

class SessionSix extends StatefulWidget {
  const SessionSix({super.key});

  @override
  State<SessionSix> createState() => _SessionSixState();
}

class _SessionSixState extends State<SessionSix> {
  List<Product> products = [
    Product(
      name: "Shoes",
      price: 39,
      imageUrl: "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
    ),
    Product(
      name: "Watch",
      price: 100,
      imageUrl: "https://images.unsplash.com/photo-1523275335684-37898b6baf30",
    ),
    Product(
      name: "Bag",
      price: 120,
      imageUrl: "https://images.unsplash.com/photo-1509762774605-f07235a08f1f",
    ),
    Product(
      name: "Headphones",
      price: 20,
      imageUrl:
          "https://plus.unsplash.com/premium_photo-1679513691474-73102089c117?q=80&w=1113&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products List")),
     body: GridView.builder(
  padding: EdgeInsets.all(10),
  itemCount: products.length,
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    childAspectRatio: 0.7,
  ),
  itemBuilder: (context, index) {
    final product = products[index];

    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Expanded(
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Icon(Icons.error));
              },
            ),
          ),

          SizedBox(height: 10),

          Text(product.name),

          SizedBox(height: 6),

          Text("\$${product.price}"),
        ],
      ),
    );
  },
),
    );
  }
}
