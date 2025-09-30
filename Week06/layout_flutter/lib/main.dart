import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget titleSection() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung Bromo',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  'Jawa Timur, Indonesia',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const Text('50'),
        ],
      ),
    );
  }

  Widget textSection() {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Gunung Bromo adalah salah satu destinasi wisata paling populer di Indonesia.\n'
            'Terletak di Taman Nasional Bromo Tengger Semeru.\n',
            softWrap: true,
          ),
          const SizedBox(height: 16),
          Image.asset(
            'img/bromo.png',
            width: double.infinity, 
            fit: BoxFit.cover, 
          ),
          const SizedBox(height: 8),
          const Text(
            'MARSYA AURELIA SEFIRA / 2341720011',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter layout: Marsya Aurelia Sefira / 2341720011',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter layout demo marsya')),
        body: ListView(
            children: [
              Image.asset(
                'img/wisatawan.png',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
                ),
              titleSection(),
              buttonSection,
              textSection(),
              
            ],
          ),
        ),
      );
  }
}
