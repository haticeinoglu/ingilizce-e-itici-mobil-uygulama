
import 'package:egiticioyun/screens/animals/Elephant.dart';
import 'package:egiticioyun/screens/animals/Kangaroo.dart';
import 'package:egiticioyun/screens/animals/lion.dart';
import 'package:egiticioyun/screens/animals/monkey.dart';
import 'package:egiticioyun/screens/animals/pig.dart';
import 'package:egiticioyun/screens/animals/sheep.dart';
import 'package:egiticioyun/screens/animals/snail.dart';
import 'package:egiticioyun/screens/animals/walrus.dart';
import 'package:egiticioyun/screens/animals/zebra.dart';
import 'package:egiticioyun/screens/colors/blue.dart';
import 'package:egiticioyun/screens/colors/darkblue.dart';
import 'package:egiticioyun/screens/colors/green.dart';
import 'package:egiticioyun/screens/colors/orange.dart';
import 'package:egiticioyun/screens/colors/pink.dart';
import 'package:egiticioyun/screens/colors/purple.dart';
import 'package:egiticioyun/screens/colors/red.dart';
import 'package:egiticioyun/screens/colors/yellow.dart';
import 'package:egiticioyun/screens/exercises/animals.dart';
import 'package:egiticioyun/screens/exercises/colors.dart';
import 'package:egiticioyun/screens/exercises/fruit.dart';
import 'package:egiticioyun/screens/exercises/numbers.dart';
import 'package:egiticioyun/screens/exercises/shapes.dart';
import 'package:egiticioyun/screens/exercises/vegatables.dart';

import 'package:egiticioyun/screens/fruits/apple.dart';
import 'package:egiticioyun/screens/fruits/banana.dart';
import 'package:egiticioyun/screens/fruits/lemon.dart';
import 'package:egiticioyun/screens/fruits/orange.dart';
import 'package:egiticioyun/screens/fruits/pear.dart';
import 'package:egiticioyun/screens/fruits/pineapple.dart';
import 'package:egiticioyun/screens/fruits/plum.dart';
import 'package:egiticioyun/screens/fruits/stawberry.dart';
import 'package:egiticioyun/screens/fruits/watermelon.dart';
import 'package:egiticioyun/screens/homepage/animals.dart';
import 'package:egiticioyun/screens/homepage/colors.dart';
import 'package:egiticioyun/screens/homepage/exercises.dart';
import 'package:egiticioyun/screens/homepage/vegatables.dart';
import 'package:egiticioyun/screens/numbers/eight.dart';
import 'package:egiticioyun/screens/numbers/five.dart';
import 'package:egiticioyun/screens/numbers/four.dart';
import 'package:egiticioyun/screens/homepage/fruit.dart';
import 'package:egiticioyun/screens/home_page.dart';
import 'package:egiticioyun/screens/numbers/nine.dart';
import 'package:egiticioyun/screens/homepage/numbers.dart';
import 'package:egiticioyun/screens/numbers/one.dart';
import 'package:egiticioyun/screens/numbers/seven.dart';
import 'package:egiticioyun/screens/homepage/shapes.dart';
import 'package:egiticioyun/screens/numbers/six.dart';
import 'package:egiticioyun/screens/numbers/three.dart';
import 'package:egiticioyun/screens/numbers/two.dart';
import 'package:egiticioyun/screens/numbers/zero.dart';
import 'package:egiticioyun/screens/shapes/Square.dart';
import 'package:egiticioyun/screens/shapes/Star.dart';
import 'package:egiticioyun/screens/shapes/Trapezoid.dart';
import 'package:egiticioyun/screens/shapes/Triangle.dart';
import 'package:egiticioyun/screens/shapes/circle.dart';
import 'package:egiticioyun/screens/shapes/diamond.dart';
import 'package:egiticioyun/screens/shapes/hexagon.dart';
import 'package:egiticioyun/screens/shapes/pentagon.dart';
import 'package:egiticioyun/screens/shapes/rectangle.dart';
import 'package:egiticioyun/screens/vegatables/broccoli.dart';
import 'package:egiticioyun/screens/vegatables/carrot.dart';
import 'package:egiticioyun/screens/vegatables/garlic.dart';
import 'package:egiticioyun/screens/vegatables/mushroom.dart';
import 'package:egiticioyun/screens/vegatables/pepper.dart';
import 'package:egiticioyun/screens/vegatables/potato.dart';
import 'package:egiticioyun/screens/vegatables/radish.dart';
import 'package:egiticioyun/screens/vegatables/stuffed_pepper.dart';
import 'package:egiticioyun/screens/vegatables/tomato.dart';
import 'package:flutter/material.dart';
import 'package:egiticioyun/screens/exercises/animals.dart' as animals_screen;
import 'package:egiticioyun/screens/exercises/colors.dart' as colors_screen;
import 'package:egiticioyun/screens/exercises/fruit.dart' as fruit_screen;
import 'package:egiticioyun/screens/exercises/numbers.dart' as numbers_screen;
import 'package:egiticioyun/screens/exercises/shapes.dart' as shapes_screen;
import 'package:egiticioyun/screens/exercises/vegatables.dart' as vegatables_screen;


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'We are lerarning kids ',
      initialRoute: '/', // Başlangıç sayfası
      routes: {
 
 

        
         '/': (context) => const HomePage(), // Ana sayfa
        '/number': (context) => const Numbers(), // Ana sayfa
        '/fruits' :(context) =>   const Fruits(),
        '/shapes' :(context) => const Shapes(),
        '/vegatables':(context) => const Vegatables(),
        '/colors' :(context) => const Colorss(),
        '/animals' : (context) => const Animals(),
        '/exercises' : (context) => const Exercises(),
        
        '/apple' :(context) =>   const Apple(),
        '/banana' :(context) =>   const Banana(),
        '/lemon' :(context) =>   const Lemon(),
        '/orange' :(context) =>   const Orange(),
        '/pear' :(context) =>   const Pear(),
        '/pineapple' :(context) =>   const Pineapple(),
        '/stawberry' :(context) =>   const Stawberry(),
        '/watermelon' :(context) =>   const Watermelon(),
        '/plum' :(context) =>   const Plum(),

        '/zero'  :(context) => const Zero(),
        '/one'   :(context) => const One(),
        '/two'    :(context) => const Two(),
        '/three'  :(context) => const Three(),
        '/four'   :(context) => const Four(),
        '/five'   :(context) => const Five(),
        '/six'    :(context) => const Six(),
        '/seven'  :(context) => const Seven(),
        '/eight'  :(context) => const Eight(),
        '/nine'   :(context) => const Nine(), 

       
        '/circle' :(context) => const Circle(),
        '/diamond':(context) => const Diamond(),
        '/hexagon':(context) => const Hexagon(),
        '/square':(context) => const Square(),
        '/star':(context) => const Star(),
        '/pentagon':(context) => const Pentagon(),
        '/trapezoid':(context) => const Trapezoid(),
        '/triangle':(context) => const Triangle(),
        'rectangle': (context) => const Rectangle(),

        
        '/broccoli' :(context) => const Broccoli(),
        '/carrot' :(context) =>   const Carrot(),
        '/garlic' :(context) =>   const Garlic(),
        '/mushroom' :(context) => const Mushroom(),
        '/pepper' :(context) =>   const Pepper(),
        '/potato' :(context) =>   const Potato(),
        '/radish' :(context) =>   const Radish(),
        '/stuffed_pepper' :(context) => const StuffedPepper(),
        '/tomato' :(context) =>   const Tomato(),

        '/blue' :(context) => const Blue(),
        '/darkblue' :(context) => const Darkblue(),
        '/green' :(context) => const Green(),
        '/orangee' :(context) => const Orangee(),
        '/pink' :(context) => const Pink(),
        '/purple' : (context) => const Purple(),
        '/red' : (context) => const Red(),
        '/yellow' :(context) => const Yellow(),

        '/elephant': (context) => const Elephant(),
        '/kangaroo': (context) => const Kangaroo(),
        '/lion': (context) => const Lion(),
        '/snail': (context) => const Snail(),
        '/walrus': (context) => const Walrus(),
        '/zebra': (context) => const Zebra(),
        '/pig': (context) => const Pig(),
        '/sheep': (context) => const Sheep(),
        '/monkey': (context) => const Monkey(),

   '/numbersgame': (context) => numbers_screen.GameScreen(items: numbers),
'/fruitsgame': (context) => fruit_screen.GameScreen(items: fruits),
'/shapesgame': (context) => shapes_screen.GameScreen(items: shapesgame),
'/colorsgame': (context) => colors_screen.GameScreen(items: colors),
'/vegatablesgame': (context) => vegatables_screen.GameScreen(items: vegatables),
'/animalsgame': (context) => animals_screen.GameScreen(items: animals),

    // Diğer kategoriler...
  },
  
  
);
  }
}



