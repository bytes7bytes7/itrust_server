import 'dart:mirrors';

class A {
  final int a;
  final String b;

  A(this.a, this.b);
}

void main() {
  final map = {
    'a': 1,
    'b': 'hello',
  };

  final r = reflectClass(A);
  final inst = r.newInstance(Symbol.empty, []);
}
