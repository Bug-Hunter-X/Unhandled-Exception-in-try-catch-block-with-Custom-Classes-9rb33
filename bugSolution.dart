```dart
class MyException implements Exception {
  final String message;
  MyException(this.message);
}

class MyClass {
  final String name;
  MyClass(this.name) {
    if (name.isEmpty) {
      throw MyException('Name cannot be empty');
    }
  }
}

void main() {
  try {
    var myObject = MyClass('');
    print(myObject.name);
  } on MyException catch (e) {
    print('Error: ${e.message}');
  } catch (e) {
    print('An unexpected error occurred: $e');
  }
}
```