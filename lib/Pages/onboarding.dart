import 'package:flutter/material.dart';
import 'package:todo_api/Pages/homescreen.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Momo Mélange'),
        backgroundColor: const Color(0xFFB46E5A),
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: const Color(0xFFB46E5A),
        padding: const EdgeInsets.all(10.0),
        height: double.infinity,
        child: Column(
          children: [
            const Image(image: AssetImage('assets/img4.png')),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'A Royal Feast in Every Bite',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "A Symphony of Flavors Where Every Bite is a Journey Through Exquisite Tastes, Crafted with Passion and Precision to Deliver an Unforgettable Culinary Experience in Every Mouthful.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(255, 193, 189, 189),
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(builder: (context) => Homescreen()),
                          (route) => false);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFF803434),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
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
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
