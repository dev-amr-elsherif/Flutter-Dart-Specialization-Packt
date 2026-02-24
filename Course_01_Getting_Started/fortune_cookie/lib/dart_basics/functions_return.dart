void main() {
  int myAge = showMyAge();
  print("My age is $myAge");
  myAge = myAge + 10;
  print("My age after 10 years is: $myAge");
  var name = sayMyName();
  print("My name is $name");
  var name_2 = showMyName("Sherif");
  print(name_2);
  var bio = sayMyBio("Elsherif", 21);
  print(bio);
}

int showMyAge() {
  int age = 21;
  return age;
}

String sayMyName() {
  String myName = "Amr";
  return myName;
}

String showMyName(String name) {
  var n = "My name is $name";
  return n;
}

String sayMyBio(String name, int age) {
  return ("My name is: $name , and my age is: $age");
}
