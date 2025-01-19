
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';

class One extends StatelessWidget {
  const One ({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text('WE ARE LEARNING KIDS :)'),
  centerTitle: true,  // Başlığı yatay olarak ortalar
),
      body: Center(
         child: Container(
    padding: const EdgeInsets.all(50),  // İçerik için boşluk ekleyebilirsiniz
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
    final AudioPlayer audioPlayer = AudioPlayer();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
        IconButtonWithText(
              imagePath: "numbers/one.jpg",
              buttonUrl : "/one",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/One.mp3"
            ),
      ],
    );
  }
}

class IconButtonWithText extends StatelessWidget {

  final String imagePath;
  final String  buttonUrl;
  final AudioPlayer  audioplayers;
  final String soundPath;
  
  const IconButtonWithText(
      {super.key, required this.imagePath,required this.buttonUrl,required this.audioplayers,required this.soundPath});
  
  // Ses dosyasını çalma fonksiyonu
  void _playAudio() async {
    // Ses dosyasının yolu (assets) belirtiliyor
    await audioplayers.play(AssetSource(soundPath));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _playAudio();
        // Navigator.pushNamed(context, buttonUrl); // İkinci sayfaya geçiş
       
      },
      
   
      child: Row(
        mainAxisSize: MainAxisSize.min, // Butonu içeriğe göre daraltır
        children: [
          Image.asset(
            'assets/images/$imagePath',
            width: 400,
            height: 200,
          ),
          const SizedBox(width:1), // İkon ile yazı arasına boşluk
        //  Text(buttonName), // Yazı ekleme
        ],
      ),
    );
  }
}
