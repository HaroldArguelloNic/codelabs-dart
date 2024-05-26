import 'dart:math';

main(){

  print(Rectangle(origin: const Point(10,20), width: 100, height: 200));
  print(Rectangle(origin: const Point(10,10)));
  print(Rectangle(width:200));
  print(Rectangle());

}

class Rectangle{
  
  Point origin;                 //Representacion de posicion en 2 dimensiones
  int? width;                  //atributos opcionales
  int? height;                 //atributos opcionales

  Rectangle({
    this.origin = const Point(0, 0),
    this.width = 0,   
    this.height = 0   
  });
  
  //sobre escritura del metodo toString();
@override
String toString() => 'Origins: (${origin.x}, ${origin.y}), width: $width, height: $height';


 

}

/* class Point{
  final int x,y; //variables de instancia declaradas final

  const Point(this.x,this.y); //constructor declarado como una constante

} */