import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImageScreen(),
    );
  }
}

class ImageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Image Loading')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 100,
        itemBuilder: (context, index) {
          return const FadeInImage(
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
            image: NetworkImage('https://images.hdqwalls.com/wallpapers/skye-united-kingdom-8k-yh.jpg'),
            placeholder: const AssetImage(
              "images/loading.gif",
            ),
          );
        },
      ),
    );
  }
}
