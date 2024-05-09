/* En este ejercicio, su código toma un Iterablede User, y tienes que devolver una Iterableque contiene cadenas que contienen el nombre y la edad de cada usuario.

Cada cuerda en el Iterabledebe seguir este formato: '{name} is {age}'Por ejemplo 'Alice is 21'.
*/


Iterable<String> getNameAndAges(Iterable<User> users) {
  // Implement the getNameAndAges function.
  return users.map((user) => '${user.name} is ${user.age}'); //uso de interpolacion para concatenar los elementos
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
  ];

  try {
    final out = getNameAndAges(users).toList();
    if (!_listEquals(out, ['Alice is 21', 'Bob is 17', 'Claire is 52'])) {
      print(
        'Looks like `getNameAndAges` is wrong. Keep trying! '
        'The output was: $out',
      );
      return;
    }
    print(out);
  } on UnimplementedError {
    print(
      'Tried running `getNameAndAges`, but received an error. '
      'Did you implement the function?',
    );
    return;
  } catch (e) {
    print('Tried running the function, but received an exception: $e');
    return;
  }

  print('Success. All tests passed!');
  
}

bool _listEquals<T>(List<T>? a, List<T>? b) {
  if (a == null) return b == null;
  if (b == null || a.length != b.length) return false;
  for (var index = 0; index < a.length; index += 1) {
    if (a[index] != b[index]) return false;
  }
  return true;
}