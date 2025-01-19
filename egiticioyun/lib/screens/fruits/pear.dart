
import 'package:flutter/material.dart';

class Pear extends StatelessWidget {
  const Pear ({super.key});
  
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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       
        IconButtonWithText(
              imagePath: "fruits/Pear.jpg",
              buttonUrl : "/pear"
              
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
