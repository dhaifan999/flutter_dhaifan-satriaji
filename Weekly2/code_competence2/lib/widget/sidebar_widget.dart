import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Dashboard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () {
              // Implementasi untuk menavigasi ke halaman Home
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('About Us'),
            onTap: () {
              // Implementasi untuk menavigasi ke halaman Profile
            },
          ),
          ListTile(
            leading: const Icon(Icons.mail),
            title: const Text('Contact Us'),
            onTap: () {
              // Implementasi untuk menavigasi ke halaman Settings
            },
          ),
        ],
      ),
    );
  }
}
