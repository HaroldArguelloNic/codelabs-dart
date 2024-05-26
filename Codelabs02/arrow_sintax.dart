class MyClass {
  int value1 = 2;
  int value2 = 3;
  int value3 = 5;
  
  // Retornar el producto de los valores declarados en la clase
  int get product => value1 * value2 * value3;
  
  // incrementar en 1 el valor de la variable value1
  void incrementValue1() => value1++;
  
  // Retorne los strings de la lista separados por ',' en cada iteraccion
  // 
  String joinWithCommas(List<String> strings) => strings.join(',');
}


// Tests your solution (Don't edit!):
void main() {
  final obj = MyClass();  //declaracion de un objeto basado en la clase MyClass
  final errs = <String>[]; //delaracion de una lista de tipo string
  
  try {
    //Declaracion de la variable product he inicializada por medio del metodo product de la instancia obj
    final product = obj.product; 
    
    // validacion del valor almacenado en la variable product.  
    if (product != 30) {
      errs.add('The product property returned $product \n instead of the expected value (30).'); 
    } 
  } catch (e) {
    print('Tried to use MyClass.product, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  try {
    // incremento de la variable value1 por medio del metodo incrementValue1()
    obj.incrementValue1(); 
    
    if (obj.value1 != 3) {
      errs.add('After calling incrementValue, value1 was ${obj.value1} \n instead of the expected value (3).'); 
    } 
  } catch (e) {
    print('Tried to use MyClass.incrementValue1, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

  try {
    final joined = obj.joinWithCommas(['one', 'two', 'three']);
    
    if (joined != 'one,two,three') {
      errs.add('Tried calling joinWithCommas([\'one\', \'two\', \'three\']) \n and received $joined instead of the expected value (\'one,two,three\').'); 
    } 
  } catch (e) {
    print('Tried to use MyClass.joinWithCommas, but encountered an exception: \n ${e.runtimeType}.');
    return;
  }

//valida que la lista errs se encuentre vacia
  if (errs.isEmpty) {
    print('Success!');
  } else {
    //caso constrario recorre la lista mostando los errores
    errs.forEach(print);
  }
}