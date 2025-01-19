// ignore: depend_on_referenced_packages
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Numbers extends StatelessWidget {
  const Numbers ({super.key});

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
              imagePath: "numbers/zero.jpg",
              buttonUrl : "/zero",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Zero.mp3"
            ),
            IconButtonWithText(
              imagePath: "numbers/one.jpg",
              buttonUrl : "/one",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/One.mp3"
              
        
            ),
             IconButtonWithText(
              imagePath: "numbers/two.jpg",
              buttonUrl : "/two",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Two.mp3"
              
            ),  
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "numbers/three.jpg",
              buttonUrl : "/three",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Three.mp3"
              
            ),
              IconButtonWithText(
              imagePath: "numbers/four.jpg",
              buttonUrl : "/four",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Four.mp3"
              
            ),
            
            IconButtonWithText(
              imagePath: "numbers/fıve.jpg",
              buttonUrl : "/five",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Five.mp3"
             
            ),
         ],
        ),
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "numbers/six.jpg",
              buttonUrl : "/six",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Six.mp3"  
            ),

            IconButtonWithText(
              imagePath: "numbers/seven.jpg",
              buttonUrl : "/seven",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Seven.mp3"   
            ),

             IconButtonWithText(
              imagePath: "numbers/eight.jpg",
              buttonUrl : "/eight",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Eight.mp3"
            ),
         ],
        ),
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              IconButtonWithText(
              imagePath: "numbers/nine.jpg",
              buttonUrl : "/nine",
              audioplayers : audioPlayer,
              soundPath: "sound/numbers/Nine.mp3"
               
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
