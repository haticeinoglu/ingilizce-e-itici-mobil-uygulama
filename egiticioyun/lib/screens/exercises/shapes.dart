// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Item {
  final String name;
  final String imagePath;
  final String audioPath;

  Item({required this.name, required this.imagePath, required this.audioPath});
}

class GameScreen extends StatefulWidget {
  final List<Item> items;
  const GameScreen({Key? key, required this.items}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<Item> shuffledItems = [];
  Item? selectedItem;
  late Item targetItem;

  // 1. Adım: AudioPlayer nesnesini sadece bir kez tanımlıyoruz
  final AudioPlayer player = AudioPlayer();  // Burada player nesnesini oluşturuyoruz.

  @override
  void initState() {
    super.initState();
    shuffledItems = List.from(widget.items)..shuffle();
    targetItem = widget.items.first; // İlk öğe hedef alınacak
  }


  // Sesi çalma fonksiyonu
  void playSound(String audioPath) async {
    try {
      // Ses çalıyoruz. return değeri yok, sadece ses çalması yeterli.
      await player.play(AssetSource("sound/shapes/Zero.jpg")); // Ses çal
    } catch (e) {
      print("Ses çalma hatası: $e");
    }
  }

  // 3. Adım: Resmi kontrol et
  void checkMatch(Item item) {
    if (item.name == targetItem.name) {
      showSuccessDialog(context);
    }
    setState(() {
      selectedItem = item;
    });
  }

  // Başarı mesajını göster
  void showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Başarılı!'),
          content: const Text('Doğru eşleştirdiniz!'),
          actions: <Widget>[
            TextButton(
              child: const Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  shuffledItems = List.from(widget.items)..shuffle(); // Öğeleri yeniden karıştır
                  targetItem = shuffledItems.first; // Yeni hedef öğe seç
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eşleştirme Oyunu')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              print(targetItem.audioPath);
              playSound(targetItem.audioPath); // Hedef öğenin sesini çal
            },
            child: const Text('Sesi Çal'),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: shuffledItems.length,
              itemBuilder: (context, index) {
                final item = shuffledItems[index];
                return GestureDetector(
                  onTap: () {
                    checkMatch(item); // Tıklanan öğeyi kontrol et
                  },
                  child: Image.asset(item.imagePath),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
List<Item> shapesgame = [
  Item(name: 'Circle', imagePath: 'assets/images/shapes/circle.jpg', audioPath: 'assets/sound/Circle.mp3'),
  Item(name: 'Diamond', imagePath: 'assets/images/shapes/Diamond.jpg', audioPath: 'assets/sound/Diamond.mp3'),
  Item(name: 'Hexagon', imagePath: 'assets/images/shapes/Hexagon.jpg', audioPath: 'assets/sound/Hexagon.mp3'),
  Item(name: 'Pentagon', imagePath: 'assets/images/shapes/Pentagon.jpg', audioPath: 'assets/sound/Pentagon.mp3'),
  Item(name: 'Rectangle', imagePath: 'assets/images/shapes/Rectangle.jpg', audioPath: 'assets/sound/Rectangle.mp3'),
  Item(name: 'Square', imagePath: 'assets/images/shapes/Square.jpg', audioPath: 'assets/sound/Square.mp3'),
  Item(name: 'Star', imagePath: 'assets/images/shapes/Star.jpg', audioPath: 'assets/sound/Star.mp3'),
  Item(name: 'Trapezoid', imagePath: 'assets/images/shapes/Trapezoid.jpg', audioPath: 'assets/sound/Trapezoid.mp3'),
  Item(name: 'Triangle', imagePath: 'assets/images/shapes/Triangle.jpg', audioPath: 'assets/sound/Triangle.mp3'),


  // Diğer şekiller...
];


