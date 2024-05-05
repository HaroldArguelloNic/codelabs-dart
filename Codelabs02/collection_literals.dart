// Asignaciona a la lista de 'a', 'b', and 'c'
final aListOfStrings = ['a','b','c'];

// Asignacion al Set de 3,4,5
final aSetOfInts = {3,4,5};

// Asignacion al Mapa de Par (key:value) ['myKey'] returns 12:
final aMapOfStringsToInts = {'myKey' : 12};

// Asignacion de lista vacia de datos double
final anEmptyListOfDouble = <double>[];

// Asignacion al vacio al Set de string
final anEmptySetOfString = <String>{};

// Asignacion vacio al Mapa de datos <double:int>
final anEmptyMapOfDoublesToInts = <double, int>{};


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];
  
  if (aListOfStrings is! List<String>) {  //valida si no es una lista
    errs.add('aListOfStrings should have the type List<String>.');
  } else if (aListOfStrings.length != 3) {  //valida si la lista es diferente de 3
    errs.add('aListOfStrings has ${aListOfStrings.length} items in it, \n rather than the expected 3.');
  } else if (aListOfStrings[0] != 'a' || aListOfStrings[1] != 'b' || aListOfStrings[2] != 'c') {
    errs.add('aListOfStrings doesn\'t contain the correct values (\'a\', \'b\', \'c\').');
  }

  if (aSetOfInts is! Set<int>) {
    errs.add('aSetOfInts should have the type Set<int>.');
  } else if (aSetOfInts.length != 3) {
    errs.add('aSetOfInts has ${aSetOfInts.length} items in it, \n rather than the expected 3.');
  } else if (!aSetOfInts.contains(3) || !aSetOfInts.contains(4) || !aSetOfInts.contains(5)) {
    errs.add('aSetOfInts doesn\'t contain the correct values (3, 4, 5).');
  }

  if (aMapOfStringsToInts is! Map<String, int>) {
    errs.add('aMapOfStringsToInts should have the type Map<String, int>.');
  } else if (aMapOfStringsToInts['myKey'] != 12) {
    errs.add('aMapOfStringsToInts doesn\'t contain the correct values (\'myKey\': 12).');
  }

  if (anEmptyListOfDouble is! List<double>) {
    errs.add('anEmptyListOfDouble should have the type List<double>.');
  } else if (anEmptyListOfDouble.isNotEmpty) {
    errs.add('anEmptyListOfDouble should be empty.');
  }

  if (anEmptySetOfString is! Set<String>) {
    errs.add('anEmptySetOfString should have the type Set<String>.');
  } else if (anEmptySetOfString.isNotEmpty) {
    errs.add('anEmptySetOfString should be empty.');
  }

  if (anEmptyMapOfDoublesToInts is! Map<double, int>) {
    errs.add('anEmptyMapOfDoublesToInts should have the type Map<double, int>.');
  } else if (anEmptyMapOfDoublesToInts.isNotEmpty) {
    errs.add('anEmptyMapOfDoublesToInts should be empty.');
  }

  if (errs.isEmpty) {
    print('Success!');
  } else {
    errs.forEach(print);
  }

  // ignore_for_file: unnecessary_type_check
}