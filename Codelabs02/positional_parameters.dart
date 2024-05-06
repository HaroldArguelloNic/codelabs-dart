String joinWithCommas(int a, [int? b, int? c, int? d, int? e]) {
  var numeros = '$a';
  if (b!= null) numeros = '$numeros,$b';
  if (c!= null) numeros = '$numeros,$c';
  if (d!= null) numeros = '$numeros,$d';
  if (e!= null) numeros = '$numeros,$e';
  return numeros;
}


// Tests your solution (Don't edit!):
void main() {
  final errs = <String>[];
  
  try {
    final value = joinWithCommas(1);
    
    if (value != '1') {
      errs.add('Tried calling joinWithCommas(1) \n and got $value instead of the expected (\'1\').'); 
    } 
    print(value);
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print('Tried calling joinWithCommas(1), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3);
    
    if (value != '1,2,3') {
      errs.add('Tried calling joinWithCommas(1, 2, 3) \n and got $value instead of the expected (\'1,2,3\').'); 
    } 
    print(value);
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print('Tried calling joinWithCommas(1, 2 ,3), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  try {
    final value = joinWithCommas(1, 2, 3, 4, 5);
    
    if (value != '1,2,3,4,5') {
      errs.add('Tried calling joinWithCommas(1, 2, 3, 4, 5) \n and got $value instead of the expected (\'1,2,3,4,5\').'); 
    } 
    print(value);
  } on UnimplementedError {
    print('Tried to call joinWithCommas but failed. \n Did you implement the method?');
    return;
  } catch (e) {
    print('Tried calling stringify(1, 2, 3, 4 ,5), \n but encountered an exception: ${e.runtimeType}.');
    return;
  }

  if (errs.isEmpty) {
    print('Success!');    
  } else {
    errs.forEach(print);
  }

}