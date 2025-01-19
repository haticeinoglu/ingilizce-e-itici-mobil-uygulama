// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Fruits extends StatelessWidget {
  const Fruits ({super.key});

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
               imagePath: "fruits/Apple.jpg",
              buttonUrl : "/apple",
              audioplayers : audioPlayer,
              soundPath : "sound/fruits/Apple.mp3"
            ),
             IconButtonWithText (
              imagePath: "fruits/Banana.jpg",
              buttonUrl : "/banana",
              audioplayers : audioPlayer,
              soundPath : "sound/fruits/Banana.mp3"
        
            ),
             IconButtonWithText(
              imagePath: "fruits/Lemon.jpg",
              buttonUrl : "/lemon",
              audioplayers: audioPlayer,
              soundPath : "sound/fruits/Lemon.mp3"
              
            ),  
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "fruits/Orange.jpg",
              buttonUrl : "/orange",
              audioplayers: audioPlayer,
              soundPath : "sound/fruits/Orange.mp3"
              
            ),
              IconButtonWithText(
              imagePath: "fruits/Pear.jpg",
              buttonUrl : "/pear",
              audioplayers: audioPlayer,
              soundPath : "sound/fruits/Pear.mp3"
              
            ),
            
            IconButtonWithText(
              imagePath: "fruits/Pineapple.jpg",
              buttonUrl : "/pineapple",
              audioplayers: audioPlayer,
              soundPath : "sound/fruits/Pineapple.mp3"
             
            ),
         ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "fruits/Plum.jpg",
              buttonUrl : "/plum",
              audioplayers: audioPlayer,
              soundPath : "sound/fruits/Plum.mp3"  
            ),

            IconButtonWithText(
              imagePath: "fruits/Strawberry.jpg",
              buttonUrl : "/strawberry",
              audioplayers: audioPlayer,
              soundPath : "sound/fruits/Strawberry.mp3" 
            ),

             IconButtonWithText(
              imagePath: "fruits/Watermelon.jpg",
              buttonUrl : "/watermelon",
              audioplayers: audioPlayer,
              soundPath : "sound/fruits/Watermelon.mp3"
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
