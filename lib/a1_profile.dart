import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileCard(),
  ));
}
class ProfileCard extends StatelessWidget {
const ProfileCard({super.key});
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('My Profile')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.face, size: 100, color: Colors.purple),
          const Text(
            'Hani Adriana',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text('Software Engineering, UMT'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print('Follow button pressed');
            },
            child: const Text('Follow'),
          ),
        ],
      ),
    ),
  );
}
}