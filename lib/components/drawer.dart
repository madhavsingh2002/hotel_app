import 'package:flutter/material.dart';

class DrawerSlide extends StatelessWidget {
  const DrawerSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipOval(
              // Half of width/height for circular effect
              child: Image(
                image: AssetImage('assets/img5.png'),
                height: 100,
              ),
            ),
            Text(
              'Madhav',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        )),
        ListTile(
          leading: const Icon(Icons.home, color: Colors.white),
          title: const Text(
            'Home',
            style: TextStyle(color: Colors.white),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          onTap: () {
            // Navigate to home
          },
        ),
        ListTile(
          leading: const Icon(Icons.explore, color: Colors.white),
          title: const Text(
            'Explore',
            style: TextStyle(color: Colors.white),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          onTap: () {
            // Navigate to contact
          },
        ),
        ListTile(
          leading: const Icon(Icons.info, color: Colors.white),
          title: const Text(
            'About',
            style: TextStyle(color: Colors.white),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          onTap: () {
            // Navigate to about
          },
        ),
        ListTile(
          leading: const Icon(Icons.contact_page, color: Colors.white),
          title: const Text(
            'Contact',
            style: TextStyle(color: Colors.white),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          onTap: () {
            // Navigate to contact
          },
        ),
        ListTile(
          leading: const Icon(Icons.settings, color: Colors.white),
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.white),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          onTap: () {
            // Navigate to contact
          },
        ),
        const SizedBox(
          height: 100,
        ),
        ListTile(
          leading: const Icon(Icons.logout, color: Colors.white),
          title: const Text(
            'Sign Out',
            style: TextStyle(color: Colors.white),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
          onTap: () {
            // Navigate to contact
          },
        ),
      ],
    );
  }
}
