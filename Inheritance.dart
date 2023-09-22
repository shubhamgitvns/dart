void main() {
  Manager e = Manager(
      name: "Sachin",
      address: "Mumbai",
      age: 50,
      department: "Batting",
      salary: 1000);
  print(e);
}

class Person {
  String name, address;
  int age;
  Person({required this.name, required this.address, required this.age});
  @override
  String toString() {
    return "Person(Name: $name, Address: $address,Age: $age)";
  }
}

class Employee extends Person {
  String post;
  int salary;
  Employee(
      {required name,
      required address,
      required age,
      required this.post,
      required this.salary})
      : super(name: name, age: age, address: address);

  @override
  String toString() {
    return " Employee(${super.toString()},Post: $post, Salary: $salary)";
  }
}

class Manager extends Employee {
  String department;

  Manager(
      {required name,
      required address,
      required age,
      required salary,
      required this.department})
      : super(
            name: name,
            age: age,
            address: address,
            post: "Manager",
            salary: salary);

  @override
  String toString() {
    return " Manager(${super.toString()},Department:${this.department})";
  }
}
