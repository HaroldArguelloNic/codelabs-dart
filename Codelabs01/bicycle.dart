class Bicycle { //definicion de la clase Bicycle
  int cadence;
  int _speed = 0;
  int get speed => _speed; //Uso de funcion flecha o lambda para obtener el valor de velocidad
  int gear;

Bicycle(this.cadence, this.gear); // constructor de la clase

void apply_Break(int decrement){    //Funcion que decrementa la velocidad
  _speed -= decrement;
}

void apply_SpeedUp(int increment){  //Funcion que incrementa la velocidad
  _speed += increment;
}

  @override   //sobreescritura del metodo toString()
  String toString() => 'Bicycle: $_speed mph';

}

void main(){

  var bike =  Bicycle(2, 1); //instanciacion de la clase bicycle

  print(bike);  //salida a pantaña de la varible.

}