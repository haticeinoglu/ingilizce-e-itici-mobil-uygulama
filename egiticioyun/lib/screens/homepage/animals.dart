// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Animals extends StatelessWidget {
  const Animals ({super.key});

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
               imagePath: "animals/Elephant.jpg",
              buttonUrl : "/elephant",
              audioplayers : audioPlayer,
              soundPath : "sound/animals/Elephant.mp3"
            ),
             IconButtonWithText (
              imagePath: "animals/Kangaroo.jpg",
              buttonUrl : "/kangaroo",
              audioplayers : audioPlayer,
              soundPath : "sound/animals/Kangaroo.mp3"
        
            ),
             IconButtonWithText(
              imagePath: "animals/Lion.jpg",
              buttonUrl : "/lion",
              audioplayers: audioPlayer,
              soundPath : "sound/animals/Lion.mp3"
              
            ),  
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "animals/Monkey.jpg",
              buttonUrl : "/monkey",
              audioplayers: audioPlayer,
              soundPath : "sound/animals/Monkey.mp3"
              
            ),
              IconButtonWithText(
              imagePath: "animals/Pig.jpg",
              buttonUrl : "/pig",
              audioplayers: audioPlayer,
              soundPath : "sound/animals/Pig.mp3"
              
            ),
            
            IconButtonWithText(
              imagePath: "animals/Sheep.jpg",
              buttonUrl : "/sheep",
              audioplayers: audioPlayer,
              soundPath : "sound/animals/Sheep.mp3"
             
            ),
         ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "animals/Snail.jpg",
              buttonUrl : "/snail",
              audioplayers: audioPlayer,
              soundPath : "sound/animals/Snail.mp3"  
            ),

            IconButtonWithText(
              imagePath: "animals/Walrus.jpg",
              buttonUrl : "/walrus",
              audioplayers: audioPlayer,
              soundPath : "sound/animals/Walrus.mp3" 
            ),
             IconButtonWithText(
              imagePath: "animals/Zebra.jpg",
              buttonUrl : "/zebra",
              audioplayers: audioPlayer,
              soundPath : "sound/animals/Zebra.mp3"  
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
