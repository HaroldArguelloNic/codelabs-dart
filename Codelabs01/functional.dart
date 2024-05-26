String scream(int length) => "A${'a' * length}h!"; // retorna la letra a multiplicada por el largo 

main() {
  final values=[1,2,3,5,10,50]; //List iterable
  /* for (var length in values) { //iteracion en la que se replica a por cada uno de los valores de Iterable
    print(scream(length));
  } */
 //        ------------  Encadenamiento de metodos     ------------------------
  /* values.map(scream).forEach(print);    encadenamiento de metodos*/
  values.skip(1).   // salta el primer elemento
  take(3).          // recorre los siguientes 3 elementos
  map(scream).      // mapea los elementos concatenando la cantidad de "a" que se replican
  forEach(print);   // recorre los elementos del iterable y los envia a pantalla.
}