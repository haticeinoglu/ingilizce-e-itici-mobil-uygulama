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
      await player.play(AssetSource("sound/numbers/Zero.mp3")); // Ses çal
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

// Sayılar için öğeleri tanımlama
List<Item> numbers = [
  Item(name: 'Zero', imagePath: 'assets/images/numbers/zero.jpg', audioPath: 'assets/sound/numbers/Zero.mp3'),
  Item(name: 'One', imagePath: 'assets/images/numbers/one.jpg', audioPath: 'assets/sound/numbers/One.mp3'),
  Item(name: 'Two', imagePath: 'assets/images/numbers/two.jpg', audioPath: 'assets/sound/numbers/Two.mp3'),
  Item(name: 'Three', imagePath: 'assets/images/numbers/three.jpg', audioPath: 'assets/sound/numbers/Three.mp3'),
  Item(name: 'Four', imagePath: 'assets/images/numbers/four.jpg', audioPath: 'assets/sound/numbers/Four.mp3'),
  Item(name: 'Five', imagePath: 'assets/images/numbers/fıve.jpg', audioPath: 'assets/sound/numbers/Five.mp3'),
  Item(name: 'Six', imagePath: 'assets/images/numbers/six.jpg', audioPath: 'assets/sound/numbers/Six.mp3'),
  Item(name: 'Seven', imagePath: 'assets/images/numbers/seven.jpg', audioPath: 'assets/sound/numbers/Seven.mp3'),
  Item(name: 'Eight', imagePath: 'assets/images/numbers/eight.jpg', audioPath: 'assets/sound/numbers/Eight.mp3'),
  Item(name: 'Nine', imagePath: 'assets/images/numbers/nine.jpg', audioPath: 'assets/sound/numbers/Nine.mp3'),
  // Diğer sayılar ekleyin...
];
