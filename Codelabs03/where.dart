/*  Uso where()para el cumplimiento de dos funciones:

    Parte 1: ImplementarfilterOutUnder21().
        Devuelve un Iterable que contengan a todos los usuarios de 21 años o más.
    Parte 2: ImplementarfindShortNamed().
        Devuelve un Iterable conteniendo a todos los usuarios con nombres de la longitud 3 o menos
*/

Iterable<User> filterOutUnder21(Iterable<User> users) {
  // Implement the filterOutUnder21 function.
  return users.where((user) => user.age > 20);
}

Iterable<User> findShortNamed(Iterable<User> users) {
  // Implement the findShortNamed function.
  return users.where((user) => user.name.length <4 );
}

class User {
  final String name;
  final int age;

  User(
    this.name,
    this.age,
  );
}

// The following code is used to provide feedback on your solution.
// There is no need to read or modify it.
void main() {
  final users = [
    User('Alice', 21),
    User('Bob', 17),
    User('Claire', 52),
    User('Dan', 12),
  ];

  try {
    final out = filterOutUnder21(users);
    if (out.any((user) => user.age < 21) || out.length != 2) {
      print(
        'Looks like `filterOutUnder21` is wrong, there are '
        'exactly two users with age under 21. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `filterOutUnder21`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `filterOutUnder21`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  try {
    final out = findShortNamed(users);
    if (out.any((user) => user.name.length > 3) || out.length != 2) {
      print(
        'Looks like `findShortNamed` is wrong, there are '
        'exactly two users with a three letter name. Keep trying!',
      );
      return;
    }
  } on UnimplementedError {
    print(
      'Tried running `findShortNamed`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print(
      'Tried running `findShortNamed`, '
      'but received an exception: ${e.runtimeType}',
    );
    return;
  }

  print('Success. All tests passed!');
}