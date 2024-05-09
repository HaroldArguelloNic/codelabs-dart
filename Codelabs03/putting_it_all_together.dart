/* Es hora de practicar lo que aprendí, en un ejercicio final.

Este ejercicio proporciona la clase EmailAddress, que tiene un constructor que toma una cuerda. Otra función proporcionada es isValidEmailAddress(), que prueba si una dirección de correo electrónico es válida.
Constructor/función	Firma de tipo	Descripción
EmailAddress ()	EmailAddress(String address)	Crea un EmailAddresspara la dirección especificada.
esValidEmailDireccións ()	bool isValidEmailAddress(EmailAddress)	Retorno truesi se dispone EmailAddresses válido.

Escriba el siguiente código:

Parte 1: Implementar parseEmailAddresses().

    Escriba la función parseEmailAddresses(), que toma un Iterable<String>que contiene direcciones de correo electrónico y devuelve un Iterable<EmailAddress>.
    Utiliera el método map()al mapa desde Stringa EmailAddress.
    Crear la EmailAddressobjetos con el constructor EmailAddress(String).

Parte 2: Implementar anyInvalidEmailAddress().

    Escriba la función anyInvalidEmailAddress(), que toma un Iterable<EmailAddress>y devuelve true si en el EmailAddress en Iterable no es válido.
    Utilir el método any()junto con la función proporcionada isValidEmailAddress().

Parte 3: Implementar validEmailAddresses().

    Escriba la función validEmailAddresses(), que toma un Iterable<EmailAddress>y devuelve otro Iterable<EmailAddress>que contiene direcciones válidas.
    Utiliera el método where()para filtrar el Iterable<EmailAddress>.
    Utilen la función proporcionada isValidEmailAddress()para evaluar si a EmailAddress es válido.
*/

Iterable<EmailAddress> parseEmailAddresses(Iterable<String> strings) {
  // Implement the parseEmailAddresses function.
  return strings.map((eAddress) => EmailAddress(eAddress)); //Se crea y retorna el objeto EmailAddress
}

bool anyInvalidEmailAddress(Iterable<EmailAddress> emails) {
  // Implement the anyInvalidEmailAddress function.
  return emails.any((eAddress) => !isValidEmailAddress(eAddress)); //retorna las EmailAddres invalidas
}

Iterable<EmailAddress> validEmailAddresses(Iterable<EmailAddress> emails) {
  // Implement the validEmailAddresses function.
  return emails.where((eAddress) => isValidEmailAddress(eAddress)); //Valida y retorna las EmailAddress validas
}

class EmailAddress {
  final String address;

  EmailAddress(this.address);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmailAddress && address == other.address;

  @override
  int get hashCode => address.hashCode;

  @override
  String toString() => 'EmailAddress{address: $address}'; //agrego salto de linea para cada elemento impreso
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  const input = [
    'ali@gmail.com',
    'bobgmail.com',
    'cal@gmail.com',
  ];

  const correctInput = ['dash@gmail.com', 'sparky@gmail.com'];

  bool _listEquals<T>(List<T>? a, List<T>? b) {
    if (a == null) return b == null;
    if (b == null || a.length != b.length) return false;
    for (var index = 0; index < a.length; index += 1) {
      if (a[index] != b[index]) return false;
    }
    return true;
  }

  final Iterable<EmailAddress> emails;
  final Iterable<EmailAddress> correctEmails;
  try {
    emails = parseEmailAddresses(input);
    correctEmails = parseEmailAddresses(correctInput);
    if (emails.isEmpty) {
      print(
        'Tried running `parseEmailAddresses`, but received an empty list.',
      );
      return;
    }
    if (!_listEquals(emails.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('bobgmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `parseEmailAddresses` is wrong. Keep trying!');
      return;
    }
    print(emails.map((e) => '${e.address}\n'));  //se muestra en pantalla los elementos de emails
    print(correctEmails.map((e) => '${e.address}\n'));  // se muestra en pantalla los elementos de correctEmails
  } on UnimplementedError {
    print(
      'Tried running `parseEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `parseEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  try {
    final out = anyInvalidEmailAddress(emails);
    if (!out) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with at least one invalid address.',
      );
      return;
    }
    final falseOut = anyInvalidEmailAddress(correctEmails);
    if (falseOut) {
      print(
        'Looks like `anyInvalidEmailAddress` is wrong. Keep trying! '
        'The result should be false with all valid addresses.',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `anyInvalidEmailAddress`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
        'Tried running `anyInvalidEmailAddress`, but received an exception: $e');
    return;
  }

  try {
    final valid = validEmailAddresses(emails);
    if (emails.isEmpty) {
      print('Tried running `validEmailAddresses`, but received an empty list.');
      return;
    }
    if (!_listEquals(valid.toList(), [
      EmailAddress('ali@gmail.com'),
      EmailAddress('cal@gmail.com'),
    ])) {
      print('Looks like `validEmailAddresses` is wrong. Keep trying!');
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `validEmailAddresses`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running the `validEmailAddresses`, '
      'but received an exception: $e',
    );
    return;
  }

  print('Success. All tests passed!');
}

bool isValidEmailAddress(EmailAddress email) {
  return email.address.contains('@');
}
