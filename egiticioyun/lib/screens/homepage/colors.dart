// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Colorss extends StatelessWidget {
  const Colorss ({super.key});

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
               imagePath: "colors/Blue.jpg",
              buttonUrl : "/blue",
              audioplayers : audioPlayer,
              soundPath : "sound/colors/Blue.mp3"
            ),
             IconButtonWithText (
              imagePath: "colors/Green.jpg",
              buttonUrl : "/green",
              audioplayers : audioPlayer,
              soundPath : "sound/colors/Green.mp3"
        
            ),
             IconButtonWithText(
              imagePath: "colors/Orange.jpg",
              buttonUrl : "/Orange",
              audioplayers: audioPlayer,
              soundPath : "sound/colors/Orange.mp3"
              
            ),  
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "colors/Pink.jpg",
              buttonUrl : "/pink",
              audioplayers: audioPlayer,
              soundPath : "sound/colors/Pink.mp3"
              
            ),
              IconButtonWithText(
              imagePath: "colors/Darkblue.jpg",
              buttonUrl : "/darkblue",
              audioplayers: audioPlayer,
              soundPath : "sound/colors/Darkblue.mp3"
              
            ),
            
            IconButtonWithText(
              imagePath: "colors/Red.jpg",
              buttonUrl : "/red",
              audioplayers: audioPlayer,
              soundPath : "sound/colors/Red.mp3"
             
            ),
         ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "colors/Yellow.jpg",
              buttonUrl : "/yellow",
              audioplayers: audioPlayer,
              soundPath : "sound/colors/Yellow.mp3"  
            ),

            IconButtonWithText(
              imagePath: "colors/Purple.jpg",
              buttonUrl : "/purple",
              audioplayers: audioPlayer,
              soundPath : "sound/colors/Purple.mp3" 
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
