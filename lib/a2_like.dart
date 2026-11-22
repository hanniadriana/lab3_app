import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LikePage(),
  ));
}

class LikePage extends StatefulWidget {
  const LikePage({super.key});

  @override
  State<LikePage> createState() => _LikePageState();
}

class _LikePageState extends State<LikePage> {
int likes = 0;
void addLike() {
  setState(() {
    likes = likes + 1;
  });
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Like Counter')),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.favorite, size: 80, color: Colors.red),
          Text('Likes: $likes', style: const TextStyle(fontSize: 28)),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: addLike,
            child: const Text('Like'),
          ),
          OutlinedButton(
            onPressed: () {
              setState(() {
                likes = 0;
              });
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    ),
  );
}
}