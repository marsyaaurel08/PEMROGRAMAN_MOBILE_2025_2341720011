import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';
import 'package:belanja/widgets/item_card.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'Jaket Jeans',
      price: 50000,
      image: 'img/jaket_jeans.png',
      stock: 10,
      rating: 4.7,
    ),
    Item(
      name: 'Pashmina Instant',
      price: 20000,
      image: 'img/pashmina_instant.png',
      stock: 15,
      rating: 4.8,
    ),
    Item(
      name: 'Inner Dress',
      price: 60000,
      image: 'img/inner_dress.png',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Paris Premium',
      price: 30000,
      image: 'img/paris_premium.png',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Pashmina Viscose',
      price: 55000,
      image: 'img/pashmina_viscose.png',
      stock: 10,
      rating: 5.0,
    ),
    Item(
      name: 'Cardigan Rajut',
      price: 70000,
      image: 'img/cardigan_rajut.png',
      stock: 10,
      rating: 4.5,
    ),
    Item(
      name: 'Abaya Turki',
      price: 200000,
      image: 'img/abaya_turki.png',
      stock: 15,
      rating: 5.0,
    ),
    Item(
      name: 'Blazer Basic',
      price: 100000,
      image: 'img/blazer_basic.png',
      stock: 10,
      rating: 4.8,
    ),
    Item(
      name: 'Inner Knit Premium',
      price: 50000,
      image: 'img/inner_knit_premium.png',
      stock: 10,
      rating: 4.7,
    ),
    Item(
      name: 'Rok Jeans',
      price: 95000,
      image: 'img/rok_jeans.png',
      stock: 10,
      rating: 4.5,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text("Katalog Marsya Collection")),
    body: GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 kolom
        crossAxisSpacing: 10,
        mainAxisSpacing: 12,
        childAspectRatio: 0.75, 
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            print("Item diklik: ${item.name}");
            context.pushNamed('item', extra: item); 
          },
          child: ItemCard(item: item),
        );
      },
    ),
  );
  }
}
