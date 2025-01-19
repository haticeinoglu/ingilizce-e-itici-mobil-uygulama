// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Vegatables extends StatelessWidget {
  const Vegatables ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text('WE ARE LEARNING KIDS :)'),
  centerTitle: true,  // Başlığı yatay olarak ortalar
),
      body: Center(
         child: Container(
    padding: const EdgeInsets.all(5),  // İçerik için boşluk ekleyebilirsiniz
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "vegatables/Broccoli.jpg",
              buttonUrl : "/broccoli",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Broccoli.mp3"
            ),
            IconButtonWithText(
              imagePath: "vegatables/Carrot.jpg",
              buttonUrl : "/carrot",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Carrot.mp3"
              
        
            ),
             IconButtonWithText(
              imagePath: "vegatables/Garlic.jpg",
              buttonUrl : "/garlic",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Garlic.mp3"
              
            ),  
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "vegatables/Mushroom.jpg",
              buttonUrl : "/mushroom",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Mushroom.mp3"
              
            ),
              IconButtonWithText(
              imagePath: "vegatables/Pepper.jpg",
              buttonUrl : "/pepper",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Pepper.mp3"
              
            ),
            
            IconButtonWithText(
              imagePath: "vegatables/Potato.jpg",
              buttonUrl : "/potato",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Potato.mp3"
             
            ),
         ],
        ),
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "vegatables/Radish.jpg",
              buttonUrl : "/radish",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Radish.mp3"  
            ),

            IconButtonWithText(
              imagePath: "vegatables/Stuffed_Pepper.jpg",
              buttonUrl : "/stuffed_pepper",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Stuffed Pepper.mp3"   
            ),

             IconButtonWithText(
              imagePath: "vegatables/Tomato.jpg",
              buttonUrl : "/tomato",
              audioplayers : audioPlayer,
              soundPath: "sound/vegatables/Tomato.mp3"
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
  final AudioPlayer  audioplayers;
  final String soundPath;
  
  const IconButtonWithText(
      {super.key, required this.imagePath,required this.buttonUrl,required this.audioplayers,required this.soundPath});
  
  void _playAudio() async {
    // Ses dosyasının yolu (assets) belirtiliyor
    await audioplayers.play(AssetSource(soundPath));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.pushNamed(context, buttonUrl); // İkinci sayfaya geçiş
         _playAudio();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal:50.0, vertical:10.0,),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min, // Butonu içeriğe göre daraltır
        children: [
          Image.asset(
            'assets/images/$imagePath',
            width: 100,
            height: 130,
          ),
          const SizedBox(width: 8), // İkon ile yazı arasına boşluk
        //  Text(buttonName), // Yazı ekleme
        ],
      ),
    );
  }
}
