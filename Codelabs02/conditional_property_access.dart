String? upperCaseIt(String? str) {
  
  return str?.toUpperCase(); //Retornamos y evaluamos la variable del parametro si es null
}
//Evaluamos la solucion
void main() {
  try {
    String? one = upperCaseIt(null); //llamada a la funcion con argumento null
    if (one != null) { // Evaluacion de la variable one
      print('Looks like you\'re not returning null for null inputs.');
    } else {
      print('Success when str is null!');
    }
  } catch (e) {
    print('Tried calling upperCaseIt(null) and got an exception: \n ${e.runtimeType}.');
  }
  
  try {
    String? two = upperCaseIt('a string'); //Llamada a la funcion con un argumento not null
    if (two == null) { //Evaluacion de la variable two
      print('Looks like you\'re returning null even when str has a value.');
    } else if (two != 'A STRING') {
      print('Tried upperCaseIt(\'a string\'), but didn\'t get \'A STRING\' in response.');
    } else {
      print('Success when str is not null!');
    }
  } catch (e) {
    print('Tried calling upperCaseIt(\'a string\') and got an exception: \n ${e.runtimeType}.');
  }
}