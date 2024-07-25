personToString(Person person) {
  print('=====');
  print(person);
  print('=====');
  print(person.name);
  print(person.age);

  if (person.dob != null) {
    print('${person.dob?.day}/${person.dob?.month}');
  }

  print('\n');
}

class Person {
  String name;
  int age;
  DateTime? dob;

  Person(this.name, this.age, {this.dob});

  toString() {
    String s = '${runtimeType.toString()} \nname: $name \nage: $age';

    if (dob != null) {
      s += '\nDoB: ${dob?.day}/${dob?.month}';
    }

    return s;
  }
}

mixin Credits {
  int credits = 0;
}

class Student extends Person with Credits {
  String course;

  Student(super.name, super.age, this.course, {super.dob});

  @override
  toString() {
    String parentToString = super.toString();

    return '$parentToString n\Course: $course \nCredits: $credits';
  }
}

void main() {
  Person person = Person('My Name', 20);
  personToString(person);

  Person p2 = Person(
    'Person 2',
    22,
    dob: DateTime.fromMillisecondsSinceEpoch(1721710938908),
  );

  personToString(p2);

  Student student = Student('Student', 18, 'Flutter');

  student.credits++;

  personToString(student);
}
