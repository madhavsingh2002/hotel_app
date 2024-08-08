import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_api/Provider/CartProvider.dart';

class Productdetails extends StatefulWidget {
  final Map<String, dynamic> product;  // Accepting the product map via constructor

  const Productdetails({super.key, required this.product});

  @override
  _ProductdetailsState createState() => _ProductdetailsState();
}

class _ProductdetailsState extends State<Productdetails> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    // Copy the product details and add quantity information
    final product = {...widget.product, 'quantity': _quantity};

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 252, 252),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 120.0),
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image(
                        image: AssetImage(product['image']),
                        height: 200,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 255, 150, 59),
                        ),
                        Text('4.9'),
                      ],
                    ),
                    Text(
                      product['name'],
                      style: TextStyle(fontSize: 24),
                    ),
                    Text('Description',
                        style: TextStyle(
                            color: Color.fromARGB(255, 98, 98, 98),
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Text(
                      'Delicate and tender dumplings filled with a savory blend of finely minced vegetables or juicy, spiced meat. These bite-sized delights are steamed to perfection, locking in the flavors and creating a soft, chewy texture. Served with a tangy and spicy dipping sauce, our momos are a comforting and flavorful treat that will transport your taste buds to the streets of the Himalayas. Perfect as a snack or a light meal, they offer a satisfying burst of flavor in every bite.',
                      style: TextStyle(color: Color.fromARGB(255, 118, 118, 118)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 225, 204, 139)),
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$${product['price']}'),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 53, 51, 51),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.remove),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  if (_quantity > 1) {
                                    _quantity--;
                                  }
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 10),
                          SizedBox( width: 20, child: Center(child: Text('$_quantity'))),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 53, 51, 51),
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: Icon(Icons.add),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  _quantity++;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Provider.of<CartProvider>(context, listen: false).addItem(product);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${product['name']} added to cart!'),
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xFF803434),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add to Cart',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
