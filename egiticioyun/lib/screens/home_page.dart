import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
              buttonUrl : "/number"
        
            ),
            IconButtonWithText(
              imagePath: "homepage/sekiller.jpeg",
              buttonUrl : "/shapes"
              
            ),
           
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             IconButtonWithText(
              imagePath: "homepage/renkler.jpeg",
              buttonUrl : "/colors"
              
            ),
            IconButtonWithText(
              imagePath: "homepage/sebzeler.jpeg",
              buttonUrl : "/vegatables"
             
            ),
          IconButtonWithText (
              imagePath: "homepage/meyveler.jpeg",
              buttonUrl : "/fruits"
              
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
             IconButtonWithText(
              imagePath: "homepage/Exercises.jpg",
              buttonUrl : "/exercises"
              
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
