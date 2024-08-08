import 'package:flutter/material.dart';

class PopularFood extends StatelessWidget {
  const PopularFood({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
          color: Color(0xFFDB9F9D),
          borderRadius: BorderRadius.circular(20.0)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/img3.png'),
            height: 100,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text(
              'Momo',
              style: TextStyle(fontSize: 20),
            ),
            Text('\$21.00', style: TextStyle(fontSize: 14)),
          ]),
          Icon(Icons.favorite_border, size: 32)
        ],
      ),
    );
  }
}
