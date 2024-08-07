import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_api/components/FoodMenuCard.dart';
import 'package:todo_api/components/drawer.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE3C5A7),
        appBar: AppBar(
          title: const Text('Momo Mélange'),
          backgroundColor: Colors.transparent,
          leading: Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Action when the cart icon is pressed
              },
            ),
          ],
        ),
        drawer: const Drawer(
            backgroundColor: Color(0xFFB46E5A), child: DrawerSlide()),
        body: SingleChildScrollView(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFB46E5A),
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Get 30% Promo',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Color(0xFF803434),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Redeem',
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
                        ],
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(
                            image: AssetImage('assets/img2.png'),
                            height: 100,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Your Dish',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20.0)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text('Food Menu', style: TextStyle(fontSize: 16),),
                Container(
                  height: 225,
                  margin: EdgeInsets.only(top: 20),
                  child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => FoodMenuCard()),
                )
              ],
            )));
  }
}
