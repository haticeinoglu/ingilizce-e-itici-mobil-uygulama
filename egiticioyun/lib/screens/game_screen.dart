import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';


// Item sınıfı, resim ve ses dosyasını eşleştirecek
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
  late List<Item> shuffledItems;  // Karıştırılmış resim ve ses öğeleri
  late int correctCount;  // Doğru eşleştirmeleri sayacağız

  final player = AudioPlayer();

  @override
  void initState() {
    super.initState();
    shuffledItems = List.from(widget.items)..shuffle(); // Öğeleri karıştır
    correctCount = 0;
  }

  // Ses çalma fonksiyonu
  void playSound(String audioPath) async {
    await player.play(AssetSource(audioPath));
  }

  // Eşleşme kontrolü
  void checkMatch(Item item) {
    playSound(item.audioPath);
    // Burada sesin doğru olduğunu kontrol edebilirsiniz
    setState(() {
      correctCount++;  // Doğru sayıyı artırıyoruz
    });

    // Eşleşme olduğunda başarı mesajı gösterilebilir
    if (correctCount == shuffledItems.length) {
      showSuccessDialog();
    }
  }

  void showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Başarılı!'),
          content: const Text('Tebrikler, tüm eşleşmeleri doğru yaptınız!'),
          actions: <Widget>[
            TextButton(
              child: const Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  correctCount = 0; // Oyunu sıfırlayabilirsiniz
                  shuffledItems.shuffle(); // Öğeleri yeniden karıştırabilirsiniz
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
            onTap: () => checkMatch(item),
            child: Image.asset(item.imagePath), // Görselleri gösteriyoruz
          );
        },
      ),
    );
  }
}
