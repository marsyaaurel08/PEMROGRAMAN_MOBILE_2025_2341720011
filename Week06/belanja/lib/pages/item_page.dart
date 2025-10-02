import 'package:flutter/material.dart';
import 'package:belanja/models/item.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});
  
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      appBar: AppBar(title: Text(item.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: item.name,
            child: Image.asset(item.image, height: 200),
          ),
          const SizedBox(height: 20),
          Text(item.name, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text("Rp ${item.price}", style: const TextStyle(fontSize: 20)),
          Text("Stok: ${item.stock}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (i) {
              return Icon(
                i < item.rating.round()
                    ? Icons.star
                    : Icons.star_border,
                color: Colors.orange,
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          "Nama: Marsya Aurelia Sefira / NIM: 2341720011",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

