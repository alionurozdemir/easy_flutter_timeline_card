import 'package:easy_flutter_timeline_card/timeline_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Flutter Timeline Card Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Easy Flutter Timeline Card Example'),
      ),
      body: ListView(
        children: [
          TimelineCard.asset(
            title: 'Asset Image Card 1',
            subtitle: 'Subtitle 1',
            imageUrl: 'assets/image1.jpg',
          ),
          TimelineCard.network(
            title: 'Network Image Card 2',
            subtitle: 'Subtitle 2',
            imageUrl: 'https://example.com/image2.jpg',
          ),
          TimelineCard.asset(
            title: 'Asset Image Card 3',
            subtitle: 'Subtitle 3',
            imageUrl: 'assets/image3.jpg',
            isLast: true,
          ),
        ],
      ),
    );
  }
}
