import 'dart:math';

abstract class Shape{   //definicion de clase abstracta
  factory Shape(String type){
  if(type == 'circle')  return Circle(2);
  if(type== 'square')  return Square(2);
  throw 'can\'t create $type.';
  }
  num get area;     //metodo de la clase abstracta
}

class Circle implements Shape{      //crea la clase circle a partir de la clase abstracta Shape
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius,2);   //retorna el area de un circulo

}

class Square implements Shape{      //crea la clase circle a partir de la clase abstracta Shape
  final num side;
  Square(this.side);
  num get area => pow(side, 2);     // retorna el area de un cuadrado
}

/* Shape shapeFactory(String type) {
  if(type == 'circle')  return Circle(2);
  if(type== 'square')  return Square(2);
  throw 'can\'t create $type.';
} */

class CircleMock implements Circle { //implementacion de interfaz en Dart
  num area=0;
  num radius=0;
}

main() {
  final circle = Shape('circle');
  final square = Shape('square');
  print(circle.area);
  print(square.area);
}