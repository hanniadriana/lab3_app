import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GuideHome(),
  ));
}

class GuideHome extends StatelessWidget {
  const GuideHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO 1: Add an AppBar with the title 'Campus Guide'
      appBar: AppBar(title: const Text('Campus Guide')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text(
                'UMT Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              // TODO 2: Set the title to 'About UMT'
              title: const Text('About UMT'),
              onTap: () {
                Navigator.pop(context);
                // TODO 3: Open AboutScreen using Navigator.push
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Welcome to UMT', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About UMT')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // TODO 4: Go back to the previous screen
            Navigator.pop(context);
          },
          child: const Text('Back'),
        ),
      ),
    );
  }
}