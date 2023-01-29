import 'package:mapster/mapster.dart';

class A {
  const A({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  final int id;
  final String firstName;
  final String lastName;

  @override
  String toString() =>
      'A {id: $id, firstName: $firstName, lastName: $lastName}';
}

class B {
  const B({
    required this.id,
    required this.fullName,
  });

  final int id;
  final String fullName;

  @override
  String toString() => 'B {id: $id, fullName: $fullName}';
}

class AToBMapper implements OneSourceMapper<A, B> {
  const AToBMapper();

  @override
  B map(A object) {
    return B(
      id: object.id,
      fullName: '${object.firstName} ${object.lastName}',
    );
  }
}

void main() {
  final mapster = Mapster()..register(AToBMapper());

  const a = A(
    id: 1,
    firstName: 'Harry',
    lastName: 'Potter',
  );

  final b = mapster.map<A, B>(a);

  print(a);
  print(b);
}
