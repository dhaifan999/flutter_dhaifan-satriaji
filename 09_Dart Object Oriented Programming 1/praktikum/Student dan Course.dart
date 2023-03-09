class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> courses = [];

  Student(this.nama, this.kelas);

  void tambahCourse(Course course) {
    courses.add(course);
  }

  void hapusCourse(Course course) {
    courses.remove(course);
  }

  void viewCourses() {
    if (courses.isEmpty) {
      print('Student ${nama} belum mempunyai courses');
    } else {
      print('Mata Pelajaran ${nama}:');
      for (Course course in courses) {
        print('${course.judul} - ${course.deskripsi}');
      }
    }
  }
}

void main() {
  Course course1 = Course('Bahasa Indonesia', 'Belajar berbahasa dengan benar');
  Course course2 = Course('PKN', 'Belajar menjadi warga negara yang baik');
  Course course3 = Course('Sains', 'Belajar tentang alam');
  Course course4 = Course('UTBK', 'Persiapan memasuki dunia perkuliahan');

  Student studentA = Student('Budi', 'Kelas 10');
  Student studentB = Student('Joko', 'Kelas 12');
  studentA.tambahCourse(course1);
  studentA.tambahCourse(course2);
  studentA.viewCourses();

  studentB.tambahCourse(course1);
  studentB.hapusCourse(course3);
  studentB.tambahCourse(course4);
  studentB.viewCourses();
}
