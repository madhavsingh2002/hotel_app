import 'package:flutter/material.dart';
import 'package:todo_api/Pages/productdetails.dart';

class FoodMenuCard extends StatelessWidget {
  final Map<String, dynamic> product;

  const FoodMenuCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Productdetails(product: product),
            ),
          );
        },
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(20.0),
          margin: EdgeInsets.only(right: 20.0),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 232, 232, 232),
              borderRadius: BorderRadius.circular(20.0)),
          child: Column(
            children: [
              Image(
                image: AssetImage(product['image']),
                height: 100,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  product['name'],
                  style: const TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${product['price'].toStringAsFixed(2)}', style: TextStyle(fontSize: 14)),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 255, 150, 59),
                      ),
                      Text('4.9')
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
