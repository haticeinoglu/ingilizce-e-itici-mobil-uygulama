// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


class GameScreen extends StatefulWidget {
  final List<Item> items;
  // ignore: use_super_parameters
  const GameScreen({Key? key, required this.items}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  List<Item> shuffledItems = [];
  String selectedItem = ''; // Seçilen öğe

  @override
  void initState() {
    super.initState();
    shuffledItems = List.from(widget.items)..shuffle(); // Öğeleri karıştır
  }

  void handleItemTap(Item item) {
    playSound(item.audioPath);
    setState(() {
      selectedItem = item.name;
    });
    // Burada eşleşme kontrolü yapabiliriz
    if (selectedItem == item.name) {
      // Eşleşme doğruysa mesaj göster
      showSuccessDialog(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Match the Sound')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: shuffledItems.length,
        itemBuilder: (context, index) {
          final item = shuffledItems[index];
          return GestureDetector(
            onTap: () => handleItemTap(item),
            child: Image.asset(item.imagePath),
          );
        },
      ),
    );
  }

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
              },
            ),
          ],
        );
      },
    );
  }
}

final player = AudioPlayer();

void playSound(String audioPath) async {
  await player.play(AssetSource(audioPath));
}

class Item {
  final String name;
  final String imagePath;
  final String audioPath;

  Item({required this.name, required this.imagePath, required this.audioPath});
}
List<Item> colors = [
  Item(name: 'One', imagePath: 'assets/images/numbers/one.jpg', audioPath: 'assets/sound/One.mp3'),
  Item(name: 'Two', imagePath: 'assets/images/numbers/two.jpg', audioPath: 'assets/sound/Two.mp3'),
  // Diğer sayılar...
];

