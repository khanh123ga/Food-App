import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

class Favoritesscreen extends StatelessWidget {
  static List<String> itemnames = [
    "BG bò nướng",
    "BG cá",
    "BG bò hành",
    "BG gà giòn cay",
    "BG gà nướng",
    "BG bò phô mai",
    "BG bò thịt heo",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorites"),
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
      ),
      body: ValueListenableBuilder(
        valueListenable: Hive.box("Favorites").listenable(),
        builder: (context, box, child) {
          return ListView.builder(
            itemCount: itemnames.length,
            itemBuilder: (context, index) {
              final name = itemnames[index];
              final isFavorite = box.get(index) != null;
              return ListTile(
                title: Text(name),
                trailing: IconButton(
                  onPressed: () async {},
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
