// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Shapes extends StatelessWidget {
  const Shapes ({super.key});

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
               imagePath: "shapes/Circle.jpg",
              buttonUrl : "/circle",
              audioplayers : audioPlayer,
              soundPath : "sound/shapes/Circle.mp3"
            ),
             IconButtonWithText (
              imagePath: "shapes/Square.jpg",
              buttonUrl : "/square",
              audioplayers : audioPlayer,
              soundPath : "sound/shapes/Square.mp3"
        
            ),
             IconButtonWithText(
              imagePath: "shapes/Triangle.jpg",
              buttonUrl : "/triangle",
              audioplayers: audioPlayer,
              soundPath : "sound/shapes/Triangle.mp3"
              
            ),  
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "shapes/Rectangle.jpg",
              buttonUrl : "/rectangle",
              audioplayers: audioPlayer,
              soundPath : "sound/shapes/Rectangle.mp3"
              
            ),
              IconButtonWithText(
              imagePath: "shapes/Diamond.jpg",
              buttonUrl : "/diamond",
              audioplayers: audioPlayer,
              soundPath : "sound/shapes/Diamond.mp3"
              
            ),
            
            IconButtonWithText(
              imagePath: "shapes/Hexagon.jpg",
              buttonUrl : "/hexagon",
              audioplayers: audioPlayer,
              soundPath : "sound/shapes/Hexagon.mp3"
             
            ),
         ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "shapes/Pentagon.jpg",
              buttonUrl : "/pentagon",
              audioplayers: audioPlayer,
              soundPath : "sound/shapes/Pentagon.mp3"  
            ),

            IconButtonWithText(
              imagePath: "shapes/Trapezoid.jpg",
              buttonUrl : "/trapezoid",
              audioplayers: audioPlayer,
              soundPath : "sound/shapes/Trapezoid.mp3" 
            ),

             IconButtonWithText(
              imagePath: "shapes/Star.jpg",
              buttonUrl : "/star",
              audioplayers: audioPlayer,
              soundPath : "sound/shapes/Star.mp3"
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
