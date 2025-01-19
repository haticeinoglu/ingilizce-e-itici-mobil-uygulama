// // import 'package:flutter/material.dart';
// // // ignore: depend_on_referenced_packages
// // import 'package:audioplayers/audioplayers.dart';

// // final player = AudioPlayer();

// // void playSound(String audioPath) async {
// //   await player.play(AssetSource(audioPath));
// // }


// // class GameScreen extends StatefulWidget {
// //   const GameScreen({super.key});

// //   @override
// //   // ignore: library_private_types_in_public_api
// //   _GameScreenState createState() => _GameScreenState();
// // }

// // class _GameScreenState extends State<GameScreen> {
// //   List<Item> items = []; // Kullanıcıya sunulacak veriler burada olacak
// //   List<Item> shuffledItems = []; // Karışık veriler

// //   @override
// //   void initState() {
// //     super.initState();
// //     // Verileri yükleyin (örneğin, sayılar, meyveler)
// //     items = numbers; // Burada "numbers" ya da diğer kategoriler olacak
// //     shuffledItems = List.from(items)..shuffle(); // Karıştırma işlemi
// //   }

// //   void handleItemTap(Item item) {
// //     playSound(item.audioPath); // Görsele tıklanınca ses çal
// //     // Eşleşme kontrolü yapabilirsiniz
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text('Game')),
// //       body: GridView.builder(
// //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// //           crossAxisCount: 3,
// //           crossAxisSpacing: 8,
// //           mainAxisSpacing: 8,
// //         ),
// //         itemCount: shuffledItems.length,
// //         itemBuilder: (context, index) {
// //           final item = shuffledItems[index];
// //           return GestureDetector(
// //             onTap: () => handleItemTap(item),
// //             child: Image.asset(item.imagePath),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
// // class Item {
// //   final String name;
// //   final String imagePath;
// //   final String audioPath;

// //   Item({required this.name, required this.imagePath, required this.audioPath});
// // }

// // // Örnek veriler
// // List<Item> numbers = [
// //   Item(name: 'One', imagePath: 'assets/images/numbers/one.jpg', audioPath: 'assets/sound/One.mp3'),
// //   Item(name: 'Two', imagePath: 'assets/images/numbers/two.jpg', audioPath: 'assets/sound/Two.mp3'),
// //   // Diğer sayılar...
// // ];
// // void showSuccessDialog(dynamic context) {
// //   showDialog(
// //     context: context,
// //     builder: (BuildContext context) {
// //       return AlertDialog(
// //         title: const Text('Başarılı!'),
// //         content: const Text('Doğru eşleştirdiniz!'),
// //         actions: <Widget>[
// //           TextButton(
// //             child: const Text('Tamam'),
// //             onPressed: () {
// //               Navigator.of(context).pop();
// //             },
// //           ),
// //         ],
// //       );
// //     },
// //   );
// // }



import 'package:flutter/material.dart';



class Exercises extends StatelessWidget {
  const Exercises({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text('WE ARE LEARNING KIDS :)'),
  centerTitle: true,  // Başlığı yatay olarak ortalar
  
),
      body: Center(
         child: Container(
    padding: const EdgeInsets.all(16),  // İçerik için boşluk ekleyebilirsiniz
    color: const Color.fromARGB(255, 32, 218, 224),  // Arka plan rengini burada belirliyoruz
    child: const Center(
              child: ButtonGrid(),
            )
          ), 
       ),
    );
  }
}

extension on Color {
}

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonWithText(
              imagePath: "homepage/sayilar.jpeg",
              buttonUrl : "/numbersgame"
        
            ),
            IconButtonWithText(
              imagePath: "homepage/sekiller.jpeg",
              buttonUrl : "/shapesgame"
              
            ),
            IconButtonWithText(
              imagePath: "homepage/renkler.jpeg",
              buttonUrl : "/colors"
              
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonWithText(
              imagePath: "homepage/sebzeler.jpeg",
              buttonUrl : "/vegatables"
             
            ),
            IconButtonWithText(
              imagePath: "homepage/meyveler.jpeg",
              buttonUrl : "/fruitsgame"
              
            ),
            
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButtonWithText(
              imagePath: "homepage/hayvanlar.jpeg",
              buttonUrl : "/animals"
              
            ),
         ],
        ),
      ],
    );
  }
}

class IconButtonWithText extends StatelessWidget {
  final String imagePath;
  final String  buttonUrl;
  
  const IconButtonWithText(
      {super.key, required this.imagePath,required this.buttonUrl});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, buttonUrl); // İkinci sayfaya geçiş
       
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal:50.0, vertical: 20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Butonu içeriğe göre daraltır
        children: [
          Image.asset(
            'assets/images/$imagePath',
            width: 200,
            height: 150,
          ),
          const SizedBox(width: 8), // İkon ile yazı arasına boşluk
        //  Text(buttonName), // Yazı ekleme
        ],
      ),
    );
  }
}
