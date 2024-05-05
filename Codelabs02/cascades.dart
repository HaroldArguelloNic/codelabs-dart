class BigObject {
  int anInt = 0;
  String aString = '';
  List<double> aList = [];
  bool _done = false;
  
  void allDone() {
    _done = true;
  }
}

BigObject fillBigObject(BigObject obj) {
  // Crear una sentencia que pueda acualizar y retornar obj
  return obj   //Retorno de obj y uso de cascade
  ..anInt= 1   //Actualizar a 1
  ..aString='String!'  //Actualizar a 'String!
  ..aList.add(3)  //Actualizar lista agregando un elemento
  ..allDone(); //llamado al metodo allDone que actualiza la variable privada _done
}


// comprobamos la solucion
void main() {
  BigObject obj; //creamos obj en base a la clase BigObject

  try {
    obj = fillBigObject(BigObject()); //actualizamos obj llamando al metodo fillBigObject
  } catch (e) {
    print('Caught an exception of type ${e.runtimeType} \n while running fillBigObject');
    return;
  }

  final errs = <String>[];

  if (obj.anInt != 1) { //validacion del valor en anInt
    errs.add(
        'The value of anInt was ${obj.anInt} \n rather than the expected (1).');
  }


  if (obj.aString != 'String!') {  //validacion del valor en aString
    errs.add(
        'The value of aString was \'${obj.aString}\' \n rather than the expected (\'String!\').');
  }

  if (obj.aList.length != 1) {
    errs.add(
        'The length of aList was ${obj.aList.length} \n rather than the expected value (1).');
  } else {
    if (obj.aList[0] != 3.0) {
      errs.add(
          'The value found in aList was ${obj.aList[0]} \n rather than the expected (3.0).');
    }
  }
  
  if (!obj._done) {
    errs.add('It looks like allDone() wasn\'t called.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }
}