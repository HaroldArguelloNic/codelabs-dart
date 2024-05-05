String? foo = 'a string'; 
String? bar; // variable null

// Sustitucion del operador para asignar el valor 'a string' en  baz.
String? baz = foo ?? bar;

void updateSomeVars() {
  // Sustitucion del operador para asignar 'a string' en bar.
  bar  ??= 'a string';
}


// Validacion de la solucion
void main() {
  try {
    updateSomeVars(); //llamada a la funcion para actualizar variables
    
    if (foo != 'a string') {         //Validacion de la variable foo
      print('Looks like foo somehow ended up with the wrong value.');
    } else if (bar != 'a string') {  //Validacion de la variable bar
      print('Looks like bar ended up with the wrong value.');
    } else if (baz != 'a string') {  //Validacion de la variable baz
      print('Looks like baz ended up with the wrong value.');
    } else {
      print('Success!');
    }
  } catch (e) {
    print('Exception: ${e.runtimeType}.');
  }
  
}