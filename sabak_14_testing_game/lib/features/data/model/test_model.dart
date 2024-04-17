class Students {
  Students({
    required this.name,
    required this.surName,
    required this.age,
    required this.city,
    this.street,
    this.isMarried,
    this.height,
    required this.group,
    required this.image,
  });
  final String name;
  final String surName;
  final int age;
  final String city;
  final String? street;
  final bool? isMarried;
  final double? height;
  final int group;
  final String image;
}

Students student_1 = Students(
  name: 'Asan',
  surName: 'Asanbekov',
  age: 18,
  city: 'Bishkek',
  group: 1,
  street: 'Umetalieva',
  height: 1.80,
  image:
      'https://freeradio.com.ua/wp-content/uploads/2023/08/Asan-Isenadzhyiev_3.jpg',
);

Students students_2 = Students(
  name: 'Uson',
  surName: 'Usonbekov',
  age: 19,
  city: 'Bishkek',
  group: 1,
  isMarried: false,
  image:
      'https://st-1.akipress.org/cdn-st-0/qX4/J/808965.6d685cdaef91f980f3a210153e986fbc.500.jpg',
);
Students students_3 = Students(
  name: 'Asel',
  surName: 'Usonbekova',
  age: 18,
  city: 'Karakol',
  group: 1,
  isMarried: false,
  image:
      'https://st-1.akipress.org/cdn-st-0/qei/I/2499917.7edee6e58555ab552d2209c25fdc17c3.jpg',
);
Students students_4 = Students(
  name: 'Aybiyke',
  surName: 'Apsatarova',
  age: 20,
  city: 'Tokmok',
  group: 3,
  isMarried: true,
  image:
      'https://st-1.akipress.org/cdn-st-0/qc2/G/1472798.e958737189476a9b762701577af82172.500.jpg',
);

List<Students> students = [
  student_1,
  students_2,
  students_3,
  students_4,
  student_1,
  students_2,
  students_3,
  students_4,
  student_1,
  students_2,
  students_3,
  students_4,
  student_1,
  students_2,
  students_3,
  students_4,
];
