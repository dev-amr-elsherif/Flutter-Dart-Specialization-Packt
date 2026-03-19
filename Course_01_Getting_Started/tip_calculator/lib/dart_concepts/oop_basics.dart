void main() {
  var person = Person("Amr", 21);
  var name = person.name;
  var age = person.age;
  print("I'm $name,and my age is $age");
  person.greeting();
  print(person.greeting_2());
}

class Person {
  //attributes
  String name;
  int age;
  //constructor
  Person(this.name, this.age);
  //methods
  void greeting() {
    print("Hello my name is $name ,and I am $age years old.");
  }

  String greeting_2() {
    return ("Hello my name is $name ,and I am $age years old.");
  }
}
