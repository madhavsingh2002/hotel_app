import 'package:flutter/material.dart';

class FoodMenuCard extends StatelessWidget {
  const FoodMenuCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,   
      padding: const EdgeInsets.all(20.0),
      margin: EdgeInsets.only(right: 20.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 232, 232, 232),
          borderRadius: BorderRadius.circular(20.0)),
      child: const Column(
        children: [
          Image(
            image: AssetImage('assets/img3.png'),
            height: 100,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
            'Momo',
            style: TextStyle(fontSize: 20),
          ),),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text('\$21.00', style: TextStyle(fontSize: 14)),
            Row(
              children: [Icon(Icons.star, color: Color.fromARGB(255, 255, 150, 59),),Text('4.9')],
            )
          ],)
        ],
      ),
    );
  }
}
