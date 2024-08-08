import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/Provider/CartProvider.dart';// Replace with your actual import

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      backgroundColor: Color(0xFF803434),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Cart'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF803434),
      ),
      body: Consumer<CartProvider>(
        builder: (context, cartProvider, child) {
          return Stack(
            children: [
              Container(
                padding: EdgeInsets.all(20.0),
                child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    final productName = cart.items.keys.elementAt(index);
          final product = cart.items[productName];
                    return Container(
                      margin: EdgeInsets.only(bottom: 25.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(50, 248, 246, 246),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ListTile(
                        title: Text(
                          product?['name'],
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          '\$${product?['price']} x ${product?['quantity']}',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: IconButton(
                          onPressed: () {
                             cart.removeItem(productName);
                          },
                          icon: Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(color: Color(0xFF803434)),
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(50, 248, 246, 246),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Text(
                      'Total: \$${cart.totalPrice}',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
